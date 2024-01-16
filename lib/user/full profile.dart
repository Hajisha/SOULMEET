// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:matrimony/constant/mycolors.dart';
// import 'package:matrimony/provider/Matrimonyprovider.dart';
// import 'package:matrimony/user/about.dart';
//
// import 'package:matrimony/user/preference.dart';
// import 'package:matrimony/user/profile1.dart';
// import 'package:provider/provider.dart';
//
// import '../constant/mywidgets.dart';
//
// class fullprofile extends StatelessWidget {
//
//   String name;
//   String Gender;
//   // String height;
//   String Age;
//   String caste;
//   String address;
//   String Education;
//   String working;
//   String income;
//   String photo4;
//
//   fullprofile ({super.key,required this.name,required this.Gender,
//     required this.Age,required this.caste,required this.address,required this.Education,required this.working,required this.income
//     ,required this.photo4
//   });
//
//   @override
//   Widget build(BuildContext context) {
//     var width = MediaQuery.of(context).size.width;
//     var height = MediaQuery.of(context).size.height;
//     return SafeArea(
//       child: Scaffold(backgroundColor: bgcolor,
//
//         body:  Column(
//             children: [
//             InkWell(onTap: () {
//           Navigator.pop(context,MaterialPageRoute(builder: (context) => Account(),));
//           },
//           child: Row(
//             children: [
//               Icon(Icons.arrow_back),
//             ],
//           )),
//
// SizedBox(height: 70,),
//               Consumer<MatrimonyProvider>(
//                 builder: (context,value,child) {
//                   return Container(
//                     margin: EdgeInsets.symmetric(horizontal:10,vertical: 10),
//                     height: 500,
//                     width: 370,
//                     decoration: BoxDecoration(
//                       color: Colors.grey,borderRadius:BorderRadius.circular(10),),
//              child: Row(
//                children: [
//                  Column(
//                    children: [
//
//                  Text(name,
//                      style: TextStyle(color: Colors.black, fontSize: 30, fontWeight: FontWeight.w700)),
//
//                      Text(Gender,
//                          style: TextStyle(color: Colors.black, fontSize: 28, fontWeight: FontWeight.w700)),
//
//                      SizedBox(height: 30,),
//                      Text(Age,
//                          style: TextStyle(color: Colors.black, fontSize: 20, fontWeight: FontWeight.w700)),
//
//                      SizedBox(height: 30,),
//                      Text(caste,
//                          style: TextStyle(color: Colors.black, fontSize: 20, fontWeight: FontWeight.w700)),
//
//                      Text(address,
//                          style: TextStyle(color: Colors.black, fontSize: 20, fontWeight: FontWeight.w700)),
//
//                       Text(Education,
//                       style: TextStyle(color: Colors.black, fontSize: 20, fontWeight: FontWeight.w700)),
//
//                       Text(working,
//                       style: TextStyle(color: Colors.black, fontSize: 20, fontWeight: FontWeight.w700)),
//
//                       Text(income  ,
//                       style: TextStyle(color: Colors.black, fontSize: 20, fontWeight: FontWeight.w700)),
//
//
//
//
//
//
//
//
//                       ]
//                       ),
//                  Image.network(photo4)
//                ],
//
//              )
//                   );
//                 }
//               )
//          ]
//       ),
//     ));
//   }
// }
