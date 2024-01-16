// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:matrimony/constant/mycolors.dart';
// import 'package:matrimony/provider/Matrimonyprovider.dart';
// import 'package:matrimony/user/profile1.dart';
// import 'package:provider/provider.dart';
//
// class preference extends StatelessWidget {
//   const preference({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//
//     var width = MediaQuery.of(context).size.width;
//     var height = MediaQuery.of(context).size.height;
//     MatrimonyProvider provider = Provider.of<MatrimonyProvider>(context,listen:false);
//     return SafeArea(
//       child: Scaffold(backgroundColor: bgcolor,
//         body:
//         SingleChildScrollView(
//           child: Column(
//             children: [
//               InkWell(onTap: () {
//                 Navigator.pop(context,MaterialPageRoute(builder: (context) => Account(),));
//               },
//                   child: Row(
//                     children: [
//                       Icon(Icons.arrow_back),
//                     ],
//                   )),
//               Text("More Details",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 28,color: Colors.black),),
//               Stack(
//                 children: [Container(
//                   margin: const EdgeInsets.all(15),
//                   child: Consumer<MatrimonyProvider>(
//                     builder: (context,value,child) {
//                       return Consumer<MatrimonyProvider>(
//                         builder: (context,value,child) {
//                           return Container(height: 400,width: 450,color: boxcolor,
//                             child: Container(margin: EdgeInsets.all(15),
//                               child: Column(
//                                 children: [SizedBox(height: 40,),
//                                   Row(
//                                     children: [
//                                       Text("Name:",style: TextStyle(fontSize: 24,color: Colors.black,fontWeight: FontWeight.bold),),
//                                       Text(value.name,style: TextStyle(fontSize: 24,color: Colors.black,fontWeight: FontWeight.bold),),
//                                     ],
//                                   ),
//                                   SizedBox(height: 10,),
//                                   // Row(
//                                   //   children: [
//                                   //     Text("Gender:",style: TextStyle(fontSize: 24,color: Colors.black,fontWeight: FontWeight.bold),),
//                                   //     Text(value.Gender,style: TextStyle(fontSize: 24,color: Colors.black,fontWeight: FontWeight.bold),),
//                                   //
//                                   //   ],
//                                   // ),
//                                   // SizedBox(height: 10,),
//                                   //
//                                   // Row(
//                                   //   children: [
//                                   //     Text("Height:",style: TextStyle(fontSize: 24,color: Colors.black,fontWeight: FontWeight.bold),),
//                                   //     Text(value.HEIGHT,style: TextStyle(fontSize: 24,color: Colors.black,fontWeight: FontWeight.bold),),
//                                   //
//                                   //   ],
//                                   // ),
//                                   // SizedBox(height: 10,),
//                                   //
//                                   // Row(
//                                   //   children: [
//                                   //     Text("Caste:",style: TextStyle(fontSize: 24,color: Colors.black,fontWeight: FontWeight.bold),),
//                                   //     Text(value.caste,style: TextStyle(fontSize: 24,color: Colors.black,fontWeight: FontWeight.bold),),
//                                   //
//                                   //   ],
//                                   // ),
//                                   // SizedBox(height: 10,),
//                                   //
//                                   // Row(
//                                   //   children: [
//                                   //     Text("Address:",style: TextStyle(fontSize: 24,color: Colors.black,fontWeight: FontWeight.bold),),
//                                   //     Text(value.address,style: TextStyle(fontSize: 24,color: Colors.black,fontWeight: FontWeight.bold),),
//                                   //
//                                   //   ],
//                                   // ),
//                                   // SizedBox(height: 10,),
//                                   //
//                                   // Row(
//                                   //   children: [
//                                   //     Text("Education:",style: TextStyle(fontSize: 24,color: Colors.black,fontWeight: FontWeight.bold),),
//                                   //     Text(value.Education,style: TextStyle(fontSize: 24,color: Colors.black,fontWeight: FontWeight.bold),),
//                                   //
//                                   //   ],
//                                   // ),
//                                   // SizedBox(height: 10,),
//                                   //
//                                   // Row(
//                                   //   children: [
//                                   //     Text("Work:",style: TextStyle(fontSize: 24,color: Colors.black,fontWeight: FontWeight.bold),),
//                                   //     Text(value.working,style: TextStyle(fontSize: 24,color: Colors.black,fontWeight: FontWeight.bold),),
//                                   //
//                                   //   ],
//                                   // ),
//                                   // SizedBox(height: 10,),
//                                   //
//                                   // Row(
//                                   //   children: [
//                                   //     Text("Income:",style: TextStyle(fontSize: 24,color: Colors.black,fontWeight: FontWeight.bold),),
//                                   //     Text(value.income,style: TextStyle(fontSize: 24,color: Colors.black,fontWeight: FontWeight.bold),),
//                                   //
//                                   //   ],
//                                   // ),
//                                 ],
//                               ),
//                             ),
//                           );
//                         }
//                       );
//                     }
//                   ),
//                 ),
//                   // Positioned(left: 250,
//                   //   top: 80,
//                   //   child: Consumer<MatrimonyProvider>(
//                   //     builder: (context,value,child) {
//                   //       return Container(height: 140,
//                   //           width: 140,
//                   //           color: Colors.grey,
//                   //           // child: Image.network(value.photo1));
//                   //     }
//                   //   ),
//                   // )
//       ]
//               ),
//
//               Text("Preference",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 28,color: Colors.black),),
//
//               Container(
//                 margin: const EdgeInsets.all(15),
//                 child: Container(
//                   height: 400,width: 450,color: boxcolor,
//                   child: Container(margin: EdgeInsets.all(15),
//                     child: Column(mainAxisAlignment: MainAxisAlignment.center,
//                       children: [SizedBox(height: 40,),
//                         Row(
//                           children: [
//                             Text("Age:",style: TextStyle(fontSize: 24,color: Colors.black,fontWeight: FontWeight.bold),),
//                             Consumer<MatrimonyProvider>(
//                               builder: (context,value,child) {
//                                 return Text(value.AGE.toString(),style: TextStyle(fontSize: 24,color: Colors.black,fontWeight: FontWeight.bold),);
//                               }
//                             ),
//                           ],
//                         ),
//                         SizedBox(height: 25,),
//                         Row(
//                           children: [
//                             Text("Height:",style: TextStyle(fontSize: 24,color: Colors.black,fontWeight: FontWeight.bold),),
//                             Consumer<MatrimonyProvider>(
//                               builder: (context,value,child) {
//                                 return Text(value.HEIGHT.toString(),style: TextStyle(fontSize: 24,color: Colors.black,fontWeight: FontWeight.bold),);
//                               }
//                             ),
//
//                           ],
//                         ),
//                         SizedBox(height: 25,),
//
//                         Row(
//                           children: [
//                             Text("Education:",style: TextStyle(fontSize: 24,color: Colors.black,fontWeight: FontWeight.bold),),
//                             Consumer<MatrimonyProvider>(
//                               builder: (context,value,child) {
//                                 return Text(value.EDUCATION.toString(),style: TextStyle(fontSize: 24,color: Colors.black,fontWeight: FontWeight.bold),);
//                               }
//                             ),
//
//                           ],
//                         ),
//                         SizedBox(height: 25,),
//
//                         Row(
//                           children: [
//                             Text("Job:",style: TextStyle(fontSize: 24,color: Colors.black,fontWeight: FontWeight.bold),),
//                             Consumer<MatrimonyProvider>(
//                               builder: (context,value,child) {
//                                 return Text(value.JOB.toString(),style: TextStyle(fontSize: 24,color: Colors.black,fontWeight: FontWeight.bold),);
//                               }
//                             ),
//
//                           ],
//                         ),
//                         SizedBox(height: 25,),
//
//                         Row(
//                           children: [
//                             Text("Caste:",style: TextStyle(fontSize: 24,color: Colors.black,fontWeight: FontWeight.bold),),
//                             Consumer<MatrimonyProvider>(
//                               builder: (context,value,child) {
//                                 return Text(value.CASTE.toString(),style: TextStyle(fontSize: 24,color: Colors.black,fontWeight: FontWeight.bold),);
//                               }
//                             ),
//
//                           ],
//                         ),
//
//                       ],
//                     ),
//                   ),
//                 ),
//               ),
//             ],
//           ),
//         ),
//
//       ),
//     );
//   }
// }
