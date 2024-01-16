import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:matrimony/constant/myfunctions.dart';
import 'package:matrimony/provider/Matrimonyprovider.dart';
import 'package:matrimony/provider/loginprovider.dart';
import 'package:matrimony/user/about.dart';

import 'package:matrimony/user/login.dart';
import 'package:provider/provider.dart';

import 'Register.dart';


class Account extends StatelessWidget {
    String userid;
   Account({super.key,required this.userid});

  @override
  Widget build(BuildContext context) {
    LoginProvider log_provider=Provider.of<LoginProvider>(context,listen: false);
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        body:
          Column(
              children: [
          Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [

            Text("Account",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 20),),
          // SizedBox(width: 220,),
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
                          color: Colors.black)),
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
                child: Text("Logout",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 20))
            )
          ]



          ) ,

        SizedBox(height: 50,),
        Consumer<MatrimonyProvider>(
          builder: (context,value,child) {
            print("hgcdvhjbdcvdh"+value.profilename.toString());
            print("hgcdvhjbdcvdh"+value.profilephoto.toString());
            return Row(
              children: [
                // SizedBox(width: 30,),
                Image.network(value.profilephoto,scale: 1,),
                Column(
                  children: [
                Row(
                children: [
                  // SizedBox(width: 30,),


                Text(value.profilename,style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 20),),
              ],
            ),
                    Row(
                      children: [
                        // SizedBox(width: 50,),

                        Text(value.profilephone,style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 20),),
                      ],
                    ),


                  ],
                ),
              ]
            );
          }
        ),
                SizedBox(height: 50,),

                SizedBox(height: 70,),
                Stack(children:[
               Consumer<MatrimonyProvider>(
                 builder: (context,value,child) {
                   return InkWell(onTap: () {
                     value.getUser(userid);

                    Navigator.push(context, MaterialPageRoute(builder: (context) => register(from:"edit",oldid:"" , ),));
                   },
                        child: Container(height: 50,width: 350,decoration: BoxDecoration( color: Colors.white,border: Border.all(width: 2,color: Colors.blueGrey)),   ));
                 }
               ),
                  Positioned(top: 15,left: 15,
                      child: Text("Edit",style: TextStyle(color: Colors.black,fontSize: 24,fontWeight: FontWeight.bold),)),
                  Positioned(left: 300,top: 15,
                      child: Icon(Icons.edit,color: Colors.black,)),


                  // Positioned(top: 50,left: 15,
                  //     child: Text("Bio",style: TextStyle(color: Colors.black,fontSize: 24,fontWeight: FontWeight.bold),)),

                ]),
SizedBox(height: 30,),
            Consumer<MatrimonyProvider>(
              builder: (context,value,child) {
                return InkWell(onTap: (){
                  //value.getRegister();
                  // value.getBio();
                  value.EDIT_ABOUT(context,log_provider.loginuserid);
                },
                  child: Container(height: 50,width: 350,decoration: BoxDecoration(color: Colors.white,  border: Border.all(width: 2,color: Colors.blueGrey)),
                       child: Padding(
                         padding: const EdgeInsets.only(left: 20,top: 10),
                         child: Text("Bio",style: TextStyle(color: Colors.black,fontSize: 24,fontWeight: FontWeight.bold),),
                       ),

                  ),
                );
              }
            )

              ]
          )


      ),
    );



  }
}
