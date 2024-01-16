import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:matrimony/admin/account2.dart';
import 'package:matrimony/admin/more%20info2.dart';
import 'package:matrimony/admin/request2.dart';
import 'package:matrimony/admin/userprofile2.dart';
import 'package:matrimony/provider/Matrimonyprovider.dart';
import 'package:provider/provider.dart';

import '../constant/mycolors.dart';
import '../constant/myfunctions.dart';
import '../constant/mywidgets.dart';
import '../user/login.dart';
import '../user/moreinfo.dart';
import '../user/request.dart';
import '../user/setpreference.dart';
import 'addingpage.dart';
import 'moredetails2.dart';

class Homepage2 extends StatelessWidget {
  const Homepage2({super.key});

  @override
  Widget build(BuildContext context) {

    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    MatrimonyProvider provider = Provider.of<MatrimonyProvider>(context,listen: false);
    return SafeArea(
      child: Scaffold(backgroundColor: Colors.black,
          body:
          SingleChildScrollView(
            child: Column(

              children: [
                Row(
                  children: [
                    InkWell(
                        onTap: () {
                          showDialog(
                            context: context,
                            builder: (context) => AlertDialog(
                              backgroundColor: Colors.white,
                              elevation: 20,
                              content:  Text(
                                  "Do you want to Logout ?",style: TextStyle(
                                  fontSize:17,

                                  fontFamily:'ink nut',
                                  fontWeight: FontWeight.w700,
                                  color: Colors.white)),
                              actions: <Widget>[
                                Row(
                                  children: [
                                    TextButton(
                                      onPressed: () {
                                        FirebaseAuth auth = FirebaseAuth.instance;
                                        auth.signOut();
                                        callNextReplacement(context, Login());
                                      },
                                      child: Container(
                                        height: 45,
                                        width: 90,
                                        decoration: BoxDecoration(
                                            color:Colors.white ,
                                            borderRadius: BorderRadius.circular(8),
                                            boxShadow: [
                                              BoxShadow(
                                                color: Color(0x26000000),
                                                blurRadius: 2.0, // soften the shadow
                                                spreadRadius: 1.0, //extend the shadow
                                              ),
                                            ] ),
                                        child: Center(child:  Text("yes",style: TextStyle( color: Colors.black,fontSize: 17,fontWeight: FontWeight.w700))),
                                      ),
                                    ),
                                    TextButton(
                                        onPressed: (){
                                          finish(context);
                                        },
                                        child: Container(
                                          height: 45,
                                          width: 90,

                                          decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(8),
                                            color: Colors.pink,
                                            boxShadow: [
                                              BoxShadow(
                                                color: Color(0x26000000),
                                                blurRadius: 2.0, // soften the shadow
                                                spreadRadius: 1.0, //extend the shadow
                                              ),
                                            ],
                                          ),
                                          child: Center(child: Text("No",style: TextStyle( color: Colors.black,fontSize: 17,fontWeight: FontWeight.w700))),
                                        ))
                                  ],
                                )

                              ],
                            ),
                          );
                        },

                        child: Padding(
                          padding: const EdgeInsets.only(left: 180),
                          child: Text("Logout",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 20)),
                        )
                    ),
                  ],
                ),
                Center(
                  child: Padding(
                    padding: const EdgeInsets.only(top: 80),
                    child: Consumer<MatrimonyProvider>(
                      builder: (context,value,child) {
                        return InkWell(onTap: () {
                          value.getRegister();
                          value.clearfn2();
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>request2()));
                        },
                          child: Container(height: 100,
                            width: 350,
                            decoration: BoxDecoration(color: Colors.blueGrey,borderRadius: BorderRadius.circular(10)),
                            child: Center(child: Text("Request",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 24),)),
                          ),
                        );
                      }
                    ),
                  ),
                ),
               
              Center(
                child: Padding(
                  padding: const EdgeInsets.only(top: 100),
                  child: Consumer<MatrimonyProvider>(
                    builder: (context,value,child) {
                      return InkWell(onTap: () {
                        value.getCustomerInfo();
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>userprofile2()));
                      },
                        child: Container(height: 100,
                        width: 350,
                          decoration: BoxDecoration(color: Colors.blueGrey,borderRadius: BorderRadius.circular(10)),
                          child: Center(child: Text("Users",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 24),)),
                        ),
                      );
                    }
                  ),
                ),
              ),
                // Center(
                //   child: Padding(
                //     padding: const EdgeInsets.only(top: 80),
                //     child: InkWell(onTap: () {
                //       Navigator.push(context, MaterialPageRoute(builder: (context)=>Account2()));
                //     },
                //       child: Container(height: 100,
                //         width: 350,
                //         decoration: BoxDecoration(color: Colors.blueGrey,borderRadius: BorderRadius.circular(10)),
                //         child: Center(child: Text("profile",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 24),)),
                //       ),
                //     ),
                //   ),
                // ),


              ]),
          )
      ),

    );
  }

}


