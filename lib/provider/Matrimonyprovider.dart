import 'dart:collection';
import 'dart:io';
//import 'dart:js';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:image_cropper/image_cropper.dart';
import 'package:image_picker/image_picker.dart';
import 'package:firebase_storage/firebase_storage.dart'as firebase_storage;
import 'package:matrimony/user/about.dart';

import 'model.dart';

class MatrimonyProvider with ChangeNotifier {
  int selectedIndex = 0;

  final FirebaseFirestore db = FirebaseFirestore.instance;

  // final DatabaseReference root = FirebaseDatabase.instance.ref();
  firebase_storage.Reference ref = FirebaseStorage.instance.ref("Images");


  void onItemTapped(int index) {
    selectedIndex = index;
    notifyListeners();
  }

  TextEditingController typeNAMEcontroller = TextEditingController();
  TextEditingController phonecontroller = TextEditingController();


  File? fileImage;
  String imageUrl = "";


  List<Editlist> listedit = [];

  List<Aboutlistmodel>listAbout = [];

  // List<photolist>listphoto=[];

  Future<void> addtype() async {
    print("hajisha");
    DateTime tod = DateTime.now();
    String stdid = tod.millisecondsSinceEpoch.toString();
    HashMap<String, Object> map = HashMap();
    map["DATE"] = tod;
    map["TYPE_ID"] = stdid;
    map["NAME"] = typeNAMEcontroller.text;
    map["phone"] = phonecontroller.text;
    map["ADDED_BY"] = "";


    if (fileImage != null) {
      String photoId = DateTime
          .now()
          .millisecondsSinceEpoch
          .toString();

      ref = FirebaseStorage.instance.ref().child(photoId);
      await ref.putFile(fileImage!).whenComplete(() async {
        await ref.getDownloadURL().then((value) {
          map["PHOTO"] = value;

          notifyListeners();
        });
        notifyListeners();
      });
      notifyListeners();
    }
    db.collection("profile").doc(stdid).set(map);
    notifyListeners();
    getData();
    notifyListeners();
  }

  void setImage(File imagee) {
    fileImage = imagee;


    notifyListeners();
  }


  Future getImagegallery() async {
    final imagePicker = ImagePicker();
    final pickedImage =
    await imagePicker.pickImage(source: ImageSource.gallery);

    if (pickedImage != null) {
      // setImage(File(pickedImage.path));
      cropImage(pickedImage.path);
      // print("hjkl"+pickedImage.path);
    } else {
      print('No image selected.');
    }
  }

  Future getImagecamera() async {
    final imagePicker = ImagePicker();
    final pickedImage =
    await imagePicker.pickImage(source: ImageSource.camera);

    if (pickedImage != null) {
      // print("dfghjk"+pickedImage.path);
      cropImage(pickedImage.path);
      setImage(File(pickedImage.path));
    } else {
      print('No image selected.');
    }
  }

  Future<void> cropImage(String path) async {
    final croppedFile = await ImageCropper().cropImage(
      sourcePath: path,
      aspectRatioPresets: Platform.isAndroid
          ? [
        CropAspectRatioPreset.square,
        CropAspectRatioPreset.ratio3x2,
        CropAspectRatioPreset.original,
        CropAspectRatioPreset.ratio4x3,
        CropAspectRatioPreset.ratio16x9,
      ]
          : [
        CropAspectRatioPreset.original,
        CropAspectRatioPreset.square,
        CropAspectRatioPreset.ratio3x2,
        CropAspectRatioPreset.ratio4x3,
        CropAspectRatioPreset.ratio5x3,
        CropAspectRatioPreset.ratio5x4,
        CropAspectRatioPreset.ratio7x5,
        CropAspectRatioPreset.ratio16x9,
        CropAspectRatioPreset.ratio16x9
      ],
      uiSettings: [
        AndroidUiSettings(
            toolbarTitle: 'Cropper',
            toolbarColor: Colors.white,
            toolbarWidgetColor: Colors.black,
            initAspectRatio: CropAspectRatioPreset.original,
            lockAspectRatio: false),
        IOSUiSettings(
          title: 'Cropper',
        )
      ],
    );
    if (croppedFile != null) {
      fileImage = File(croppedFile.path);
      notifyListeners();
    }
    notifyListeners();
  }


  String id = '';
  String name = '';
  String phone = '';
  String photo = '';

  void getData() {
    db.collection("profile").get().then((value) {
      listedit.clear();
      if (value.docs.isNotEmpty) {
        for (var data in value.docs) {
          id = data.id;
          name = data.get("NAME");
          phone = data.get("phone");
          photo = data.get("PHOTO");


          // listedit.add(Editlist(id, name,phone));
          notifyListeners();
          print(listedit.length.toString());
          notifyListeners();
        }
        notifyListeners();
      }
      notifyListeners();
    });
  }

  void clearfn() {
    typeNAMEcontroller.clear();
    phonecontroller.clear();
  }

  List<Registerlist>Typeregister = [];


  TextEditingController typename1controller = TextEditingController();
  TextEditingController phone1controller = TextEditingController();

  File? fileImage7;
  String imageUrl7 = "";

  Future<void> addregister(String from, String oldid) async {
    print("hajisha");
    DateTime tod = DateTime.now();
    String id = tod.millisecondsSinceEpoch.toString();
    HashMap<String, Object> map = HashMap();
    map["DATE"] = tod;

    map["NAME"] = typename1controller.text;
    map["MOBILE_NUMBER"] = phone1controller.text;
    map["ADDED_BY"] = "";
    map["TYPE"] = "USER";
    map["STATUS"] = "REQUEST";
    HashMap<String, Object> usermap = HashMap();
    usermap["NAME"] = typename1controller.text;
    if (from == "NEW") {
      map["USER_ID"] = id;
    }


    if (fileImage7 != null) {
      String photoId = DateTime
          .now()
          .millisecondsSinceEpoch
          .toString();

      ref = FirebaseStorage.instance.ref().child(photoId);
      await ref.putFile(fileImage7!).whenComplete(() async {
        await ref.getDownloadURL().then((value) {
          map["PHOTO"] = value;

          notifyListeners();
        });
        notifyListeners();
      });
      notifyListeners();
    }


    if (from == "NEW") {
      db.collection("CUSTOMER").doc(id).set(map);

      db.collection("USERS").doc(id).set(usermap);
    } else {
      print(profileid + "djhhfhfh");
      db.collection("CUSTOMER").doc(profileid).update(map);

      db.collection("USERS").doc(profileid).update(usermap);
    }
    getData();
    notifyListeners();
  }

  void setImage5(File imagee) {
    fileImage7 = imagee;


    notifyListeners();
  }


  Future getImagegallery5() async {
    final imagePicker = ImagePicker();
    final pickedImage =
    await imagePicker.pickImage(source: ImageSource.gallery);

    if (pickedImage != null) {
      // setImage(File(pickedImage.path));
      cropImage5(pickedImage.path);
      // print("hjkl"+pickedImage.path);
    } else {
      print('No image selected.');
    }
  }

  Future getImagecamera5() async {
    final imagePicker = ImagePicker();
    final pickedImage5 =
    await imagePicker.pickImage(source: ImageSource.camera);

    if (pickedImage5 != null) {
      // print("dfghjk"+pickedImage.path);
      cropImage5(pickedImage5.path);
      setImage5(File(pickedImage5.path));
    } else {
      print('No image selected.');
    }
  }

  Future<void> cropImage5(String path) async {
    final croppedFile = await ImageCropper().cropImage(
      sourcePath: path,
      aspectRatioPresets: Platform.isAndroid
          ? [
        CropAspectRatioPreset.square,
        CropAspectRatioPreset.ratio3x2,
        CropAspectRatioPreset.original,
        CropAspectRatioPreset.ratio4x3,
        CropAspectRatioPreset.ratio16x9,
      ]
          : [
        CropAspectRatioPreset.original,
        CropAspectRatioPreset.square,
        CropAspectRatioPreset.ratio3x2,
        CropAspectRatioPreset.ratio4x3,
        CropAspectRatioPreset.ratio5x3,
        CropAspectRatioPreset.ratio5x4,
        CropAspectRatioPreset.ratio7x5,
        CropAspectRatioPreset.ratio16x9,
        CropAspectRatioPreset.ratio16x9
      ],
      uiSettings: [
        AndroidUiSettings(
            toolbarTitle: 'Cropper',
            toolbarColor: Colors.white,
            toolbarWidgetColor: Colors.black,
            initAspectRatio: CropAspectRatioPreset.original,
            lockAspectRatio: false),
        IOSUiSettings(
          title: 'Cropper',
        )
      ],
    );
    if (croppedFile != null) {
      fileImage7 = File(croppedFile.path);
      notifyListeners();
    }
    notifyListeners();
  }

  String profilename = "";
  String profileid = "";

  String profilephone = "";
  String profilephoto = "";


  void
  getUser(String userid) {
    print("wdwdchbekjchb+" + userid.toString());
    db.collection("CUSTOMER").where("USER_ID", isEqualTo: "userid").get().then((
        value) {
      if (value.docs.isNotEmpty) {
        for (var value in value.docs) {
          Map<String, dynamic> map = value.data();
          print("ncbcndenc" + profileid.toString());
          profileid = value.id;
          profilename = map["NAME"].toString();
          profilephone = map["MOBILE_NUMBER"].toString();
          profilephoto = map["PHOTO"] ?? "";

          typeNAMEcontroller.text = profilename;
          phone1controller.text = profilephone;
          // usersList.add(usersModel(
          //     value.get("Name"), value.get("Addres"), value.id,
          //     value.get("Phone")));
          notifyListeners();
        }
        notifyListeners();
      }
      notifyListeners();
    });
  }

  void getRegister() {
    print("code heree");
    db.collection("CUSTOMER").where("STATUS", isEqualTo: "REQUEST").get().then((
        value1) {
      Typeregister.clear();
      if (value1.docs.isNotEmpty) {
        for (var value in value1.docs) {
          Typeregister.add(Registerlist(value.id,
            value.get("NAME").toString(), value.get("MOBILE_NUMBER").toString(),
            // value.get("PHOTO").toString()
          ));
          notifyListeners();
        }
      }
    });
  }

  void acceptRequest(String id, String name, String phone,
      BuildContext contxt) {
    HashMap<String, Object> map = HashMap();
    map["STATUS"] = "ACCEPT";
    db.collection("CUSTOMER").doc(id).update(map);

    HashMap<String, Object> userMap = HashMap();
    userMap["NAME"] = name;
    userMap["MOBILE_NUMBER"] = "+91" + phone;
    userMap["TYPE"] = "USER";
    userMap["USER_ID"] = id;
    db.collection("USERS").doc(id).set(userMap);
    ScaffoldMessenger.of(contxt).showSnackBar(const SnackBar(
        backgroundColor: Colors.black,
        content: Text(
          "accepted successfully ",
          style: TextStyle(
              fontWeight: FontWeight.w600, fontSize: 18, color: Colors.white),
        )));

    getRegister();
    notifyListeners();
  }

  void declineRequest(id, BuildContext contxt) {
    HashMap<String, Object> map = HashMap();
    map["STATUS"] = "DECLINE";
    db.collection("CUSTOMER").doc(id).update(map);
    ScaffoldMessenger.of(contxt).showSnackBar(const SnackBar(
        backgroundColor: Colors.black,
        content: Text(
          "declined successfully ",
          style: TextStyle(
              fontWeight: FontWeight.w600, fontSize: 18, color: Colors.white),
        )));
    getRegister();
    notifyListeners();
  }

  void clearfn2() {
    typename1controller.clear();
    phone1controller.clear();
  }


  void getCustomerInfo() {
    notifyListeners();
    db
        .collection("CUSTOMER")
        .where("STATUS", isEqualTo: "ACCEPT")
        .get()
        .then((value1) {
      notifyListeners();
      Typeregister.clear();
      if (value1.docs.isNotEmpty) {
        if (value1.docs.isNotEmpty) {
          for (var value in value1.docs) {
            Typeregister.add(Registerlist(value.get("USER_ID").toString(),
              value.get("NAME").toString(),
              value.get("MOBILE_NUMBER").toString(),
              // /value.get("PHOTO").toString()
            ));
            notifyListeners();
          }
        }
        notifyListeners();
      }
    });
  }


  void clearfnregister() {
    typename1controller.clear();
    phone1controller.clear();
    fileImage7 = null;
    imageUrl7 = "";
  }


  TextEditingController typename2controller = TextEditingController();
  TextEditingController typeGendercontroller = TextEditingController();
  TextEditingController typeHeightcontroller = TextEditingController();
  TextEditingController typeAge3controller = TextEditingController();
  TextEditingController typeCastecontroller = TextEditingController();
  TextEditingController typeAddresscontroller = TextEditingController();
  TextEditingController typeEducationcontroller = TextEditingController();
  TextEditingController typeWorkingascontroller = TextEditingController();
  TextEditingController typeIncomecontroller = TextEditingController();
  TextEditingController age_pcontroller = TextEditingController();
  TextEditingController height_pcontroller = TextEditingController();
  TextEditingController education_pcontroller = TextEditingController();
  TextEditingController job_controller = TextEditingController();
  TextEditingController caste_controller = TextEditingController();

  File? fileaboutImage;
  String aboutimageUrl = "";


  Future<void> addabout(String userid) async {
    DateTime tod = DateTime.now();
    String abouttid = tod.millisecondsSinceEpoch.toString();
    HashMap<String, Object> map = HashMap();
    map["DATE1"] = tod;
    map["aboutID"] = abouttid;
    map["name2"] = typename2controller.text.toString();
    map["Gender"] = checkvalue2;
    map["Height"] = checkvalue4;
    map["Age"] = typeAge3controller.text.toString();
    map["caste"] = checkvalue3;
    map["Address"] = typeAddresscontroller.text.toString();
    map["Education"] = typeEducationcontroller.text.toString();
    map["working"] = typeWorkingascontroller.text.toString();
    map["Income"] = typeIncomecontroller.text.toString();
    map["added1_by"] = "";
    map["age_preference"] = age_pcontroller.text.toString();
    map["height_preference"] = checkvalue5;
    map["education_preference"] = education_pcontroller.text.toString();
    map["job_preference"] = job_controller.text.toString();
    map["caste_preference"] = checkvalue6;


    if (fileaboutImage != null) {
      String photoId = DateTime
          .now()
          .millisecondsSinceEpoch
          .toString();

      ref = FirebaseStorage.instance.ref().child(photoId);
      await ref.putFile(fileaboutImage!).whenComplete(() async {
        await ref.getDownloadURL().then((value) {
          map["PHOTO"] = value;

          notifyListeners();
        });
        notifyListeners();
      });
      notifyListeners();
    }
    else {
      map['PHOTO'] = '';
      // map['IMAGE_URL'] = aboutimageUrl;
    }

    db.collection("CUSTOMER").doc(userid).set(map, SetOptions(merge: true));
    getAbout();


    notifyListeners();
  }

  void setAboutImage(File image) {
    fileaboutImage = image;


    notifyListeners();
  }


  Future getAboutgallery() async {
    final imagePicker = ImagePicker();
    final pickedImage =
    await imagePicker.pickImage(source: ImageSource.gallery);

    if (pickedImage != null) {
      // setImage(File(pickedImage.path));
      cropAboutImage(pickedImage.path);
      // print("hjkl"+pickedImage.path);
    } else {
      print('No image selected.');
    }
  }

  Future getAboutImagecamera() async {
    final imagePicker = ImagePicker();
    final pickedImage =
    await imagePicker.pickImage(source: ImageSource.camera);

    if (pickedImage != null) {
      // print("dfghjk"+pickedImage.path);
      cropAboutImage(pickedImage.path);
      // setImage(File(pickedImage.path));

    } else {
      print('No image selected.');
    }
  }

  Future<void> cropAboutImage(String path) async {
    final croppedFile = await ImageCropper().cropImage(
      sourcePath: path,
      aspectRatioPresets: Platform.isAndroid
          ? [
        CropAspectRatioPreset.square,
        CropAspectRatioPreset.ratio3x2,
        CropAspectRatioPreset.original,
        CropAspectRatioPreset.ratio4x3,
        CropAspectRatioPreset.ratio16x9,
      ]
          : [
        CropAspectRatioPreset.original,
        CropAspectRatioPreset.square,
        CropAspectRatioPreset.ratio3x2,
        CropAspectRatioPreset.ratio4x3,
        CropAspectRatioPreset.ratio5x3,
        CropAspectRatioPreset.ratio5x4,
        CropAspectRatioPreset.ratio7x5,
        CropAspectRatioPreset.ratio16x9,
        CropAspectRatioPreset.ratio16x9
      ],
      uiSettings: [
        AndroidUiSettings(
            toolbarTitle: 'Cropper',
            toolbarColor: Colors.white,
            toolbarWidgetColor: Colors.black,
            initAspectRatio: CropAspectRatioPreset.original,
            lockAspectRatio: false),
        IOSUiSettings(
          title: 'Cropper',
        )
      ],
    );
    if (croppedFile != null) {
      fileaboutImage = File(croppedFile.path);
      notifyListeners();
    }
    notifyListeners();
  }


  // String id="";
  // String profilename = "";
  // String Gender = "";
  // String height = "";
  // String  Age= "";
  // String caste = "";
  // String address = "";
  // String Education = "";
  // String working = "";
  // String income = "";

  void getAbout() {
    print("dbd");
    db.collection("CUSTOMER").get().then((value) {
      if (value.docs.isNotEmpty) {
        listAbout.clear();

        for (var value in value.docs) {
          listAbout.add(Aboutlistmodel(
              value.id,
              value.get("name2").toString(),
              value.get("Gender").toString(),
              value.get("Height").toString(),
              value.get("Age").toString(),
              value.get("caste").toString(),
              value.get("Address").toString(),
              value.get("Education").toString(),
              value.get("working").toString(),
              value.get("Income").toString(),
              value.get("PHOTO"),
              value.get("age_preference"),
              value.get("height_preference"),
              value.get("education_preference"),
              value.get("job_preference"),
              value.get("caste_preference")));
          notifyListeners();

          print(listAbout.length.toString() + "dkdk");
          notifyListeners();
        }
        notifyListeners();
      }
      notifyListeners();
    });
  }

  // void editabout(String userid)
  // {
  //   db.collection("CUSTOMER").doc(userid).get().then((value)
  //   {
  //     if (value.exists)
  //       {
  //
  //       }
  //   });
  // }


  void clearfnabout() {
    typename2controller.clear();
    typeGendercontroller.clear();
    typeHeightcontroller.clear();
    typeAge3controller.clear();
    typeCastecontroller.clear();
    typeEducationcontroller.clear();
    typeAddresscontroller.clear();
    typeWorkingascontroller.clear();
    typeIncomecontroller.clear();
    fileaboutImage = null;
    aboutimageUrl = "";
  }


  void EDIT_ABOUT(BuildContext context,String Aid) {
    db.collection("CUSTOMER").doc(Aid).get().then((value) {
      clearfnabout();
      if (value.exists) {

        Map<dynamic, dynamic>map = value.data() as Map;
        typename2controller.text = map["name2"].toString();
        checkvalue2 = map["Gender"].toString();
        checkvalue4 = map["Height"].toString();
        typeAge3controller.text = map["Age"].toString();
        checkvalue3 = map["caste"].toString();
        typeAddresscontroller.text = map["Address"].toString();
        typeEducationcontroller.text = map["Education"].toString();
        typeWorkingascontroller.text = map["Working"].toString();
        typeIncomecontroller.text = map["Income"].toString();
        age_pcontroller.text = map["age_preference"];
        checkvalue5 = map["height_preference"];
        education_pcontroller = map["education_preference"];
        job_controller.text = map["job_preference"];
        checkvalue6 = map["caste_preference"];

        aboutimageUrl = map["PHOTO"].toString();
        notifyListeners();
      }
    }
    );
    Navigator.push(context, MaterialPageRoute(builder: (context)=>AboutPage(userid: Aid)));
  }










  String checkvalue2 = "";

  void ordertypes(String? val) {
    checkvalue2 = val!;
    notifyListeners();
  }


  String checkvalue3= "";

  void ordertypes1(String? val) {
    checkvalue3= val!;
    notifyListeners();
  }




  String checkvalue4= "";

  void ordertypes2(String? val) {
    checkvalue4= val!;
    notifyListeners();
  }




  TextEditingController Agecontroller = TextEditingController();
  TextEditingController Heightcontroller = TextEditingController();
  TextEditingController Educationcontroller = TextEditingController();
  TextEditingController jobcontroller = TextEditingController();
  TextEditingController Castecontroller = TextEditingController();




  String checkvalue5= "";

  void ordertypes5(String? val) {
    checkvalue5= val!;
    notifyListeners();
  }

  String checkvalue6= "";

  void ordertypes6(String? val) {
    checkvalue6= val!;
    notifyListeners();
  }







}