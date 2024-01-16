import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:matrimony/admin/editpge.dart';
import 'package:matrimony/admin/homepage2.dart';
import 'package:provider/provider.dart';

import '../constant/myfunctions.dart';
import '../provider/Matrimonyprovider.dart';
import '../user/login.dart';

// class Account2 extends StatelessWidget {
//
//    Account2({super.key,});
//
//   @override
//   Widget build(BuildContext context) {
//     MatrimonyProvider  provider = Provider.of<MatrimonyProvider >(context,listen:false);
//     provider.getData();
//     var width = MediaQuery.of(context).size.width;
//     var height = MediaQuery.of(context).size.height;
//     return  SafeArea(
//       child: Scaffold(backgroundColor: Colors.black,
//         body:InkWell(onTap: () {
//           Navigator.pop(context,MaterialPageRoute(builder: (context) => Homepage2(),));
//         },
//             child: Column(
//               children: [
//                 Row(
//                   children: [
//
//                     Icon(Icons.arrow_back,color: Colors.white,),
//                     Text("Account",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 20),),
//
//                     InkWell(
//                         onTap: () {
//                           showDialog(
//                             context: context,
//                             builder: (context) => AlertDialog(
//                               backgroundColor: Colors.white,
//                               elevation: 20,
//                               content:  Text(
//                                   "Do you want to Logout ?",style: TextStyle(
//                                   fontSize:17,
//
//                                   fontFamily:'ink nut',
//                                   fontWeight: FontWeight.w700,
//                                   color: Colors.white)),
//                               actions: <Widget>[
//                                 Row(
//                                   children: [
//                                     TextButton(
//                                       onPressed: () {
//                                         FirebaseAuth auth = FirebaseAuth.instance;
//                                         auth.signOut();
//                                         callNextReplacement(context, Login());
//                                       },
//                                       child: Container(
//                                         height: 45,
//                                         width: 90,
//                                         decoration: BoxDecoration(
//                                             color:Colors.white ,
//                                             borderRadius: BorderRadius.circular(8),
//                                             boxShadow: [
//                                               BoxShadow(
//                                                 color: Color(0x26000000),
//                                                 blurRadius: 2.0, // soften the shadow
//                                                 spreadRadius: 1.0, //extend the shadow
//                                               ),
//                                             ] ),
//                                         child: Center(child:  Text("yes",style: TextStyle( color: Colors.black,fontSize: 17,fontWeight: FontWeight.w700))),
//                                       ),
//                                     ),
//                                     TextButton(
//                                         onPressed: (){
//                                           finish(context);
//                                         },
//                                         child: Container(
//                                           height: 45,
//                                           width: 90,
//
//                                           decoration: BoxDecoration(
//                                             borderRadius: BorderRadius.circular(8),
//                                             color: Colors.pink,
//                                             boxShadow: [
//                                               BoxShadow(
//                                                 color: Color(0x26000000),
//                                                 blurRadius: 2.0, // soften the shadow
//                                                 spreadRadius: 1.0, //extend the shadow
//                                               ),
//                                             ],
//                                           ),
//                                           child: Center(child: Text("No",style: TextStyle( color: Colors.black,fontSize: 17,fontWeight: FontWeight.w700))),
//                                         ))
//                                   ],
//                                 )
//
//                               ],
//                             ),
//                           );
//                         },
//
//                         child: Padding(
//                           padding: const EdgeInsets.only(left: 180),
//                           child: Text("Logout",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 20)),
//                         )
//                     )
//                       ],
//                 ),
//           SizedBox(height: 50,),
//           Row(
//             children: [
//               SizedBox(width: 30,),
//               Consumer<MatrimonyProvider>(
//                 builder: (context,value,child) {
//                   print("nm,."+value.photo.toString());
//                   return Container(
//                     width: 150,
//                     height: 150,
//                     decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),
//                         // color: Colors.red,
//                         // image: DecorationImage(image: NetworkImage(value.photo,),fit: BoxFit.fill),
//                         boxShadow: [BoxShadow(blurRadius: 3,offset: Offset(0, 3),color: Colors.grey.shade500)]
//
//                     ),
//                     child: Image.network(value.photo.toString()),
//
//                   );
//                 }
//               ),
//               Consumer< MatrimonyProvider>(
//                 builder: (context,value,child) {
//                   return Column(
//                     children: [
//                       Row(
//                         children: [SizedBox(width: 30,),
//                           Column(
//                             children: [
//                               Row(
//                                 children: [
//                                   Icon(Icons.person,color: Colors.white,),
//                                   SizedBox(width: 15,),
//                                   Consumer<MatrimonyProvider>(
//                                       builder: (context,value,child) {
//
//                                         return Text(value.name,style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 20),);
//                                       }
//                                   ),
//                                 ],
//                               ),
//                               SizedBox(height: 20,),
//                               Row(
//                                 children: [
//                                   Icon(Icons.call,color: Colors.white,),
//                                   SizedBox(width: 15,),
//                                   Text(value.phone,style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 20),),
//                                 ],
//                               ),
//
//                             ],
//                           ),
//
//                         ],
//                       ),
//
//
//                     ],
//                   );
//                 }
//               ),
//
//
// ]
//       ),
//                 SizedBox(height: 50,),
//
//                 SizedBox(height: 70,),
//                Stack(children:[
//                  Consumer< MatrimonyProvider>(
//                    builder: (context,value,child) {
//                      return InkWell(
//                        onTap: (){
//                          value.clearfn();
//                          Navigator.push(context,MaterialPageRoute(builder: (context)=>Edit(name:value.name,phone: value.phone ,)));
//                        },
//                          child: Container(height: 50,width: 350,color: Colors.blueGrey,));
//                    }
//                  ),
//                  Positioned(top: 15,left: 15,
//                      child: Text("Edit",style: TextStyle(color: Colors.black,fontSize: 24,fontWeight: FontWeight.bold),)),
//                  Positioned(left: 300,top: 15,
//                      child: Icon(Icons.edit))
//
//                ]),
//
//
//
//     ]
//     )
//     )
//       )
//     );
//   }
// }
