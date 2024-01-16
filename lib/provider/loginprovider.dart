import 'dart:developer';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:matrimony/constant/mycolors.dart';
import 'package:matrimony/user/about.dart';
import 'package:provider/provider.dart';

import '../admin/homepage2.dart';
import '../constant/myfunctions.dart';
import '../user/home page.dart';
import '../user/navigationbar.dart';
import '../user/otp page.dart';
import '../user/profilepicture.dart';
import 'Matrimonyprovider.dart';

class LoginProvider extends ChangeNotifier {


  TextEditingController Loginphnnumber=TextEditingController();
  TextEditingController otpverifycontroller = TextEditingController();

  String VerificationId = "";
  String loginuserid="";
  TextEditingController otp_verbify = TextEditingController();

  FirebaseAuth auth = FirebaseAuth.instance;
  final FirebaseFirestore db = FirebaseFirestore.instance;

  bool loader =false;
  void sendotp(BuildContext context) async {
    loader = true;
    notifyListeners();
    await auth.verifyPhoneNumber(
      phoneNumber: "+91${Loginphnnumber.text}",
      verificationCompleted: (PhoneAuthCredential credential) async {
        await auth.signInWithCredential(credential);
        ScaffoldMessenger.of(context)
            .showSnackBar( SnackBar(
          backgroundColor: bgcolor,
          content: Text(
              "Verification Completed",style: TextStyle(color: Colors.pink,fontSize: 20,fontWeight: FontWeight.w800,)),
          duration:
          Duration(milliseconds: 3000),
        ));
        if (kDebugMode) {}
      },
      verificationFailed: (FirebaseAuthException e) {
        if (e.code == "invalid-phone-number") {
          ScaffoldMessenger.of(context)
              .showSnackBar(const SnackBar(
            content:
            Text("Sorry, Verification Failed"),
            duration: Duration(milliseconds: 3000),
          ));
          if (kDebugMode) {

          }

        }
      },

      codeSent: (String verificationId, int? resendToken) {
        VerificationId = verificationId;
        loader =false;
        notifyListeners();
        Navigator.pushReplacement(
            context,
            MaterialPageRoute(
              builder: (context) => OtpScreen(),
            ));
        ScaffoldMessenger.of(context)
            .showSnackBar( SnackBar(
          backgroundColor: bgcolor,
          content: Text(
              "OTP sent to phone successfully",style: TextStyle(color: Colors.pink,fontSize: 18,fontWeight: FontWeight.w600,)),
          duration:
          Duration(milliseconds: 3000),
        ));
        Loginphnnumber.clear();
        log("Verification Id : $verificationId");

      },
      codeAutoRetrievalTimeout: (String verificationId) {},
      timeout: const Duration(seconds: 60),
    );
  }
  void verify(BuildContext context) async {

    PhoneAuthCredential credential = PhoneAuthProvider.credential(
        verificationId: VerificationId, smsCode: otpverifycontroller.text);
    await auth.signInWithCredential(credential).then((value) {
      final user = value.user;
      if (user != null) {
        userAuthorisation(user.phoneNumber, context);

      } else {
        if (kDebugMode) {
        }
      }
    });
  }

  void userAuthorisation(String? phone,BuildContext context,){
    MatrimonyProvider provider =Provider.of<MatrimonyProvider>(context,listen: false);
    String loginType='';
    String name='';
    String loginphone='';
    String userId='';
    db.collection("USERS").where("MOBILE_NUMBER",isEqualTo: phone).get().then((value){
      if(value.docs.isNotEmpty){
        for(var e in value.docs){
          Map<dynamic, dynamic> map = e.data();
          loginType= map["TYPE"].toString();
          name= map["NAME"].toString();
          loginphone= map["MOBILE_NUMBER"].toString();
          userId = map["USER_ID"].toString();
           loginuserid= map["USER_ID"].toString();
          if(loginType == "ADMIN"){
            provider.getRegister();
            callNextReplacement(context,Homepage2());
          }else{


          print("jhvhjvhjb jhbbcvhjv"+userId);
            db.collection("CUSTOMER").where("USER_ID", isEqualTo: userId).get().then((value2) {
              if (value2.docs.isNotEmpty) {
                for(var e in value2.docs){
                  print("uyvbjnkm");

                  Map<dynamic,dynamic> map2=e.data();
                  log("vhjbjb"+map2.toString());
                  // print("gfdfghj5625"+map2["aboutID"]);
                  if(!map2.containsKey("aboutID")){
                    callNextReplacement(context, AboutPage(userid: userId,));


                  }else{
                    print("hgvh222222222ggv");
                    provider.getCustomerInfo();
                    provider.getAbout();
                    callNextReplacement(context, BottomNav(userid: userId,));
                  }

            }
              }
            }
            );


          }
        }
      }
    });
  }
  void clearLogin(){

    Loginphnnumber.clear();
    otpverifycontroller.clear();

  }
}
