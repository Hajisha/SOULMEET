// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:matrimony/provider/Matrimonyprovider.dart';
// import 'package:matrimony/user/photoadding%20page.dart';
// import 'package:provider/provider.dart';
//
//
// import '../constant/mycolors.dart';
// import '../constant/mywidgets.dart';
// import 'about.dart';
//
//
// class Profile extends StatelessWidget {
//   const Profile({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     var width = MediaQuery.of(context).size.width;
//     var height = MediaQuery.of(context).size.height;
//     return SafeArea(
//       child: Scaffold(backgroundColor: bgcolor,
//
// body: SingleChildScrollView(
//   child:   Column(
//         children: [
//
//           SizedBox(height: 15,),
//           Text("  As per the survey 79.50 of people select",style: TextStyle(color: Colors.black,fontWeight: FontWeight.normal,fontSize: 23),),
//           Text("   profile based on picture you select as",style: TextStyle(color: Colors.black,fontWeight: FontWeight.normal,fontSize: 23),),
//           Text("profile picture.so upload your best photo",style: TextStyle(color: Colors.black,fontWeight: FontWeight.normal,fontSize: 23),),
//
//           SizedBox(height: 15,),
//     //       Row(
//     //         children: [
//     //
//     //           SizedBox(width: 30,),
//     //           Image.asset("assets/photo1.png",scale: 4,),
//     //       SizedBox(width: 30,),
//     //
//     // Image.asset("assets/IMG2.png",scale: 1.2,),
//     //           SizedBox(width: 30,),
//     //
//     //           Image.asset("assets/image 9.png",scale: 1.3,),
//     //         ],
//     //       ),
//           Container(
//             height: 150,
//             width: 270,
//             color: Colors.grey,
//             child: Consumer<MatrimonyProvider>(
//               builder: (context,value,child) {
//                 return InkWell(onTap: (){
//
//                   Navigator.push(context, MaterialPageRoute(builder: (context)=>Photoadding()));
//                 },
//                     child: Icon(Icons.image,size:100,color: Colors.blueGrey,));
//               }
//             ),
//           ),
//           // Padding(
//           //   padding: const EdgeInsets.only(left: 300,top: 50),
//           //   child: InkWell(onTap: (){
//           //     Navigator.push(context, MaterialPageRoute(builder: (context)=> Photoadding(),));
//           //   },
//           //     child: Container(
//           //       height: 50,
//           //       width: 50,
//           //       decoration: BoxDecoration(borderRadius: BorderRadius.circular(20,),color: Colors.pink,),
//           //       child: Icon(CupertinoIcons.plus),
//           //     ),
//           //   ),
//           // ),
//
//           SizedBox(height: 60,),
//           // Row(
//           //   children: [SizedBox(width: 20,),
//           //     Text("Short bio",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 27),),
//           //     Text("(optional)",style: TextStyle(color: Colors.black,fontWeight: FontWeight.normal,fontSize: 27),),
//           //   ],
//           // ),
//           // SizedBox(height: 20,),
//           // Consumer<MatrimonyProvider>(
//           //   builder: (context,value,child) {
//           //     return InkWell(onTap: (){
//           //       value.filebioImage=null;
//           //       value.bioimageUrl="";
//           //
//           //       Navigator.push(context, MaterialPageRoute(builder: (context)=>Photoadding()));
//           //     },
//           //       child: Container(height: 150,
//           //         width: 400,decoration: BoxDecoration(borderRadius: BorderRadius.circular(15),color: Colors.pink.shade100,
//           //             border: Border.all(width: 2,color: Colors.black)),
//                   // child: TextField(
//                   //   keyboardType: TextInputType.text,
//                   //   inputFormatters: [],
//                   //   decoration: InputDecoration(
//                   //     hintText: "Describe yourself in a few words",suffixStyle: TextStyle()
//                   //
//                   //   ),
//                   // ),
//           //       ),
//           //     );
//           //   }
//           // ),
//           Padding(
//             padding: const EdgeInsets.only(top:100 ),
//             child: Consumer<MatrimonyProvider>(
//               builder: (context,value,child) {
//                 return InkWell(onTap: () {
//                   value.addabout();
//                   value.getAbout();
//
//                   Navigator.push(context, MaterialPageRoute(builder: (context) => AboutPage(),));
//                 },
//                     child: mybtn(height/18,width/3 , "Save",18,FontWeight.w600));
//               }
//             ),
//           ),
//
//         ]
// ),
//       ),)
//     );
//
//
//   }
// }
