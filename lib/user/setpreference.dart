import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:matrimony/constant/mycolors.dart';
import 'package:matrimony/provider/Matrimonyprovider.dart';
import 'package:matrimony/user/home%20page.dart';

import 'package:matrimony/user/preference.dart';
import 'package:provider/provider.dart';

import '../constant/mywidgets.dart';

// class Setpreference extends StatelessWidget {
//
//   const Setpreference({super.key});

//   @override
//   Widget build(BuildContext context) {
//     var width = MediaQuery.of(context).size.width;
//     var height = MediaQuery.of(context).size.height;
//     return SafeArea(
//       child: Scaffold(backgroundColor: bgcolor,
// body:
//         SingleChildScrollView(
//           child: Container(height: height,
//             width: width,
//             child: Column(
//               children: [
//                 InkWell(onTap: () {
//
//                   Navigator.pop(context,MaterialPageRoute(builder: (context) => Homepage(),));
//                 },
//                     child: Row(
//                       children: [
//                         Icon(Icons.arrow_back,color: Colors.white,),
//                       ],
//                     )),
//                 SizedBox(height: 20,),
//                 Text("Set your Preference",style: TextStyle(color: Colors.white,fontSize: 30,fontWeight: FontWeight.bold),),
//                 Padding(
//                   padding: const EdgeInsets.only(right: 330,top: 30),
//                   child: Text("Age",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 20),),
//                 ),
//                 Consumer<MatrimonyProvider>(
//                   builder: (context,value,child) {
//                     return TextField(
//                       controller: value.Agecontroller,
//                       style: TextStyle(color: Colors.white),
//                       keyboardType: TextInputType.number,
//                       inputFormatters: [LengthLimitingTextInputFormatter(3)],
//                       decoration: InputDecoration(
//                         hintText: "Age should between",
//                       ),
//                     );
//                   }
//                 ),
//
//                 Padding(
//                   padding: const EdgeInsets.only(right: 330,top: 30),
//                   child: Text("Height",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 20),),
//                 ),
//                 Consumer<MatrimonyProvider>(
//                     builder: (context,val2,child) {
//                       return Row(
//                         children: [
//                           Radio(
//                               activeColor: Colors.blueGrey,
//                               value: "Tall ",
//                               groupValue:val2.checkvalue5,
//                               onChanged: (value){
//                                 val2.checkvalue5 = value.toString();
//                                 val2.notifyListeners();
//                               }
//                           ),
//
//
//                           Text(
//                             "Tall",
//                             style:
//                             TextStyle(fontWeight: FontWeight.w300, fontSize: 15, color: Colors.white,fontFamily: "ink nut"),
//                           ),
//
//
//                           Consumer<MatrimonyProvider>(
//                               builder: (context,val2,child) {
//                                 return Row(
//                                   children: [
//                                     Radio(
//                                         activeColor: Colors.blueGrey,
//                                         value: "Average ",
//                                         groupValue:val2.checkvalue5,
//                                         onChanged: (value){
//                                           val2.checkvalue5= value.toString();
//                                           val2.notifyListeners();
//                                         }
//                                     ),
//                                     Text(
//                                       "Average",
//                                       style:
//                                       TextStyle(fontWeight: FontWeight.w300, fontSize: 15, color: Colors.white,fontFamily: "ink nut"),
//                                     ),
//
//                                     Consumer<MatrimonyProvider>(
//                                         builder: (context,val2,child) {
//                                           return Row(
//                                             children: [
//                                               Radio(
//                                                   activeColor: Colors.grey,
//                                                   value: "Short ",
//                                                   groupValue:val2.checkvalue5,
//                                                   onChanged: (value){
//                                                     val2.checkvalue5 = value.toString();
//                                                     val2.notifyListeners();
//                                                   }
//                                               ),
//                                               Text(
//                                                 "Short",
//                                                 style:
//                                                 TextStyle(fontWeight: FontWeight.w300, fontSize: 15, color: Colors.white,fontFamily: "ink nut"),
//                                               ),
//
//
//
//                                             ],
//                                           );
//                                         }
//                                     ),
//                                   ],
//                                 );
//                               }
//                           ),
//
//
//                         ],
//                       );
//                     }
//                 ),
//                 Padding(
//                   padding: const EdgeInsets.only(right: 300,top: 30),
//                   child: Text("Education",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 20),),
//                 ),
//                 Consumer<MatrimonyProvider>(
//                   builder: (context,value,child) {
//                     return TextField(
//                       controller: value.Educationcontroller,
//                       style: TextStyle(color: Colors.white),
//
//                       keyboardType: TextInputType.text,
//                       inputFormatters: [],
//                       decoration: InputDecoration(
//                         hintText: "Qualification",
//                       ),
//                     );
//                   }
//                 ),
//
//                 Padding(
//                   padding: const EdgeInsets.only(right: 320,top: 30),
//                   child: Text("Job",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 20),),
//                 ),
//                 Consumer<MatrimonyProvider>(
//                   builder: (context,value,child) {
//                     return TextField(
//                       controller: value.jobcontroller,
//                       style: TextStyle(color: Colors.white),
//
//                       keyboardType: TextInputType.text,
//                       inputFormatters: [],
//                       decoration: InputDecoration(
//                         hintText: "Job should be",
//                       ),
//                     );
//                   }
//                 ),
//                 Padding(
//                   padding: const EdgeInsets.only(right: 320,top: 30),
//                   child: Text("Caste",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 20),),
//                 ),
//                 Consumer<MatrimonyProvider>(
//                     builder: (context,val2,child) {
//                       return Row(
//                         children: [
//                           Radio(
//                               activeColor: Colors.blueGrey,
//                               value: "muslim ",
//                               groupValue:val2.checkvalue6,
//                               onChanged: (value){
//                                 val2.checkvalue6 = value.toString();
//                                 val2.notifyListeners();
//                               }
//                           ),
//                           Text(
//                             "Muslim",
//                             style:
//                             TextStyle(fontWeight: FontWeight.w300, fontSize: 15, color: Colors.white,fontFamily: "ink nut"),
//                           ),
//
//                           Consumer<MatrimonyProvider>(
//                               builder: (context,val2,child) {
//                                 return Row(
//                                   children: [
//                                     Radio(
//                                         activeColor: Colors.blueGrey,
//                                         value: "hindu ",
//                                         groupValue:val2.checkvalue6,
//                                         onChanged: (value){
//                                           val2.checkvalue6 = value.toString();
//                                           val2.notifyListeners();
//                                         }
//                                     ),
//                                     Text(
//                                       "Hindu",
//                                       style:
//                                       TextStyle(fontWeight: FontWeight.w300, fontSize: 15, color: Colors.white,fontFamily: "ink nut"),
//                                     ),
//
//
//                                     Consumer<MatrimonyProvider>(
//                                         builder: (context,val2,child) {
//                                           return Row(
//                                             children: [
//                                               Radio(
//                                                   activeColor: Colors.grey,
//                                                   value: "christian ",
//                                                   groupValue:val2.checkvalue6,
//                                                   onChanged: (value){
//                                                     val2.checkvalue6 = value.toString();
//                                                     val2.notifyListeners();
//                                                   }
//                                               ),
//                                               Text(
//                                                 "christian",
//                                                 style:
//                                                 TextStyle(fontWeight: FontWeight.w300, fontSize: 15, color: Colors.white,fontFamily: "ink nut"),
//                                               ),
//
//
//
//                                             ],
//                                           );
//                                         }
//                                     ),
//
//                                   ],
//                                 );
//                               }
//                           ),
//
//
//                         ],
//                       );
//                     }
//                 ),
//               SizedBox(height: 50,),
//               Consumer<MatrimonyProvider>(
//                 builder: (context,value,child) {
//                   return InkWell(onTap: (){
//                     value.addSetpreference();
//                     // Navigator.push(context, MaterialPageRoute(builder:(context) => preference (),));
//                   },
//
//
//                       child: Container(height: 50,width: 100,color: Colors.blueGrey,
//                       child: Center(child: Text("Save",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 24),)),
//                       ),
//
//                   );
//                 }
//               )
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }
