import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:matrimony/constant/myfunctions.dart';
import 'package:matrimony/provider/Matrimonyprovider.dart';
import 'package:matrimony/user/login.dart';
import 'package:provider/provider.dart';


import '../constant/mywidgets.dart';
import 'about.dart';



class register extends StatelessWidget {
  String from;
  String oldid;
   register({super.key,required this.from,required this.oldid});
  final formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return SafeArea(
      child: Scaffold(backgroundColor: Colors.black,
        body: SingleChildScrollView(
          child: Form(key: formKey,
            child: Column(
              children: [
                Row(
                  children: [

                    SizedBox(width: 10,),
                    Text("Register Now",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 22,color: Colors.white),),
                  ],
                ),
                Container(height: height/2.8,
                    width: width,
                    child: Image.asset("assets/newlogin.png")),
                Text("SOULMEET",style: TextStyle(color: Colors.black,fontSize: 30,fontWeight: FontWeight.bold),),

                // InkWell(
                //   onTap: () {
                //
                //
                //     showBottomSheet(context);
                //   },
                //   child: Consumer<MatrimonyProvider>(builder: (context, value, child) {
                //     print("1356ggcxg"+value.fileuserImage.toString());
                //     return value.fileuserImage != null
                //         ? Center(
                //       child: CircleAvatar(
                //         backgroundColor: Colors.white,
                //         radius: 70,
                //         backgroundImage: FileImage(
                //           value.fileuserImage!,
                //         ),
                //       ),
                //     )
                //     //     : value.imageuserUrl != ""
                //     //     ? Center(
                //     //   child: CircleAvatar(
                //     //     backgroundColor: Colors.white,
                //     //     radius: 70,
                //     //     backgroundImage: NetworkImage(value.imageuserUrl),
                //     //   ),
                //     // )
                //         : Center(
                //       child: CircleAvatar(
                //           backgroundColor: Colors.white,
                //           radius: 70,
                //           child: Icon(
                //             Icons.image,
                //             size: 90,
                //             color: Colors.grey.shade500,
                //           )),
                //     );
                //   }),
                // ),

                Consumer<MatrimonyProvider>(builder: (context, value, child) {
                  return value.fileImage7!= null ? Center(
                    child: CircleAvatar(
                      backgroundColor: Colors.white,
                      radius: 70,
                      backgroundImage: FileImage(
                        value.fileImage7!,
                      ),
                    ),
                  )
                      : value.imageUrl7 != ""
                      ? Center(
                    child: InkWell(onTap: (){
                      showBottomSheet4(context);
                    },
                      child: CircleAvatar(
                        backgroundColor: Colors.grey.shade600,
                        radius: 70,
                        backgroundImage: NetworkImage(value.imageUrl7),
                      ),
                    ),
                  )
                      : Center(
                    child: InkWell(onTap: (){
                      showBottomSheet4(context);

                    },
                      child: CircleAvatar(
                          backgroundColor: Colors.white,
                          radius: 70,
                          child: Icon(
                            Icons.image,
                            size: 90,
                            color: Colors.grey.shade500,
                          )),
                    ),
                  );
                }),

SizedBox(height: 25,),
                Consumer<MatrimonyProvider>(
                  builder: (context,value,child) {
                    return TextFormField(
                     controller: value.typename1controller,
                      style: TextStyle(color: Colors.white),
                      keyboardType: TextInputType.name,
                      inputFormatters: [],
                      decoration: InputDecoration(
                        focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.white,width: 2)
                        ),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide(
                                color: Colors.white
                            )
                        ),
                        hintText: "Name",

                        hintStyle: TextStyle(color: Colors.grey),
                        prefixIcon: Icon(Icons.person,color: Colors.grey,),
                      ),
                      validator: (value) {
                        if (value!.isEmpty) {
                          return "This field is Required";
                        } else {

                        }
                      },

                    );
                  }
                ),
                SizedBox(height: 30,),

                Consumer<MatrimonyProvider>(
                  builder: (context,value,child) {
                    return TextFormField(
                      controller: value.phone1controller,
                      style: TextStyle(color: Colors.white),

                      keyboardType: TextInputType.number,
                      inputFormatters: [LengthLimitingTextInputFormatter(10)],
                      decoration: InputDecoration(
                        focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.white,width: 2)
                        ),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide(
                                color: Colors.white
                            )
                        ),
                        hintText: "phone number",
                        hintStyle: TextStyle(color: Colors.grey),
                        prefixIcon: Icon(Icons.phone,color: Colors.grey,),
                      ),
                      validator: (value) {
                        if (value!.isEmpty) {
                          return "This field is Required";
                        } else {

                        }
                      },

                    );
                  }
                ),

SizedBox(height: 20,),
                Text("by clicking Submit button,you accept our ",style:TextStyle(color: Colors.grey.shade600,fontWeight: FontWeight.normal),),
                Text("privacy policy and Terms and conditions. ",style: TextStyle(color: Colors.grey.shade600,fontWeight: FontWeight.normal),),

                Padding(
                  padding: const EdgeInsets.only(top:80 ),
                  child: Consumer<MatrimonyProvider>(
                    builder: (context,value,child) {

                        return InkWell(onTap: () {
                          final FormState? form = formKey.currentState;
                          if(form!.validate()) {

                          if(from=="NEW"){
                         value.addregister("NEW","");
                             // value.clearfnregister();
                          Navigator.push(context, MaterialPageRoute(builder: (context) =>Login(),));
                             }else{
                         value.addregister("edit",oldid);
                              finish(context);
                               }
                              }




                        },




                          child: mybtn(height/18,width/3 , "Register",18,FontWeight.w600));
                    }
                  ),
                ),

              ],
            ),
          ),
        ),


      ),
    );
  }
}






void showBottomSheet4(BuildContext context) {
  MatrimonyProvider provider =
  Provider.of<MatrimonyProvider>(context, listen: false);

  showModalBottomSheet(
      elevation: 10,
      backgroundColor: Colors.white,
      shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(10.0),
            topRight: Radius.circular(10.0),
          )),
      context: context,
      builder: (BuildContext bc) {
        return Wrap(
          children: <Widget>[
            ListTile(
                leading: Icon(
                  Icons.camera_enhance_sharp,
                  color: Colors.black,
                ),
                title: const Text(
                  'Camera',
                ),
                onTap: () =>
                {provider.getImagecamera5(), Navigator.pop(context)}),
            ListTile(
                leading: Icon(Icons.photo, color: Colors.black),
                title: const Text(
                  'Gallery',
                ),
                onTap: () =>
                {provider.getImagegallery5(), Navigator.pop(context)}),
          ],
        );

      });
  //ImageSource
}