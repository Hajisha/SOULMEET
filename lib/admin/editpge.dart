import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:matrimony/constant/mycolors.dart';
import 'package:matrimony/constant/myfunctions.dart';
import 'package:provider/provider.dart';


import '../provider/Matrimonyprovider.dart';
import '../user/navigationbar.dart';
import 'account2.dart';

// class Edit extends StatelessWidget {
//   String name;
//   String phone;
//    Edit({super.key,required this.name,required this.phone});
//
//   @override
//   Widget build(BuildContext context) {
//     return SafeArea(
//       child: Scaffold(backgroundColor: bgcolor,
//       body:
//         SingleChildScrollView(
//           child: Column(
//             children: [InkWell(
//                 onTap: () {
//                 //   Navigator.push(context,
//                 //       MaterialPageRoute(builder: (context) => BottomNav()));
//                 },
//
//                 child: Row(
//                   children: [
//                     Icon(Icons.arrow_back),
//                   ],
//                 )),
//               SizedBox(height: 20,),
//               InkWell(
//                 onTap: () {
//                   showBottomSheet(context);
//                 },
//                 child: Consumer<MatrimonyProvider>(builder: (context, value, child) {
//                   return value.fileImage != null
//                       ? Center(
//                     child: CircleAvatar(
//                       backgroundColor: Colors.white,
//                       radius: 70,
//                       backgroundImage: FileImage(
//                         value.fileImage!,
//                       ),
//                     ),
//                   )
//                       : value.imageUrl != ""
//                       ? Center(
//                     child: CircleAvatar(
//                       backgroundColor: Colors.white,
//                       radius: 70,
//                       backgroundImage: NetworkImage(value.imageUrl),
//                     ),
//                   )
//                       : Center(
//                     child: CircleAvatar(
//                         backgroundColor: Colors.white,
//                         radius: 70,
//                         child: Icon(
//                           Icons.image,
//                           size: 90,
//                           color: Colors.grey.shade500,
//                         )),
//                   );
//                 }),
//               ),
//
//           SizedBox(height: 50,),
//              Consumer<MatrimonyProvider>(
//                builder: (context,value,child) {
//                  return TextField(
//                    controller: value.typeNAMEcontroller,
//                    style: TextStyle(color: Colors.white),
//
//                    keyboardType: TextInputType.name,
//                    inputFormatters: [],
//                    decoration: InputDecoration(
//                      hintText: "Name ",hintStyle: TextStyle(color: Colors.white)
//                    ),
//                  );
//                }
//              ),
//               SizedBox(height: 30,),
//
//              Consumer<MatrimonyProvider>(
//                builder: (context,value,child) {
//                  return TextField(
//                    controller: value.phonecontroller,
//                    style: TextStyle(color: Colors.white),
//                    keyboardType: TextInputType.number,
//                    inputFormatters: [LengthLimitingTextInputFormatter(10)],
//                    decoration: InputDecoration(
//                      hintText: " phone number ",hintStyle: TextStyle(color: Colors.white),
//
//                    ),
//                  );
//                }
//              ),
//
//               SizedBox(height: 80,),
//
//
//               Consumer<MatrimonyProvider>(
//                 builder: (context,value,child) {
//                   return InkWell(onTap: () {
//                     value.addtype();
//                     value.getData();
//                     callNext(context, Account2());
//
//                   },
//                     child: Container(height: 50,width: 150,color: Colors.blueGrey,
//                     child: Center(child: Text("save",style:TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 25) ,)),),
//                   );
//                 }
//               )
//
//             ]
//           ),
//         ),
//
//
//
//       ),
//       );
//   }
// }
// void showBottomSheet(BuildContext context) {
//   MatrimonyProvider provider =
//   Provider.of<MatrimonyProvider>(context, listen: false);
//
//   showModalBottomSheet(
//       elevation: 10,
//       backgroundColor: Colors.white,
//       shape: const RoundedRectangleBorder(
//           borderRadius: BorderRadius.only(
//             topLeft: Radius.circular(10.0),
//             topRight: Radius.circular(10.0),
//           )),
//       context: context,
//       builder: (BuildContext bc) {
//         return Wrap(
//           children: <Widget>[
//             ListTile(
//                 leading: Icon(
//                   Icons.camera_enhance_sharp,
//                   color: Colors.black,
//                 ),
//                 title: const Text(
//                   'Camera',
//                 ),
//                 onTap: () =>
//                 {provider.getImagecamera(), Navigator.pop(context)}),
//             ListTile(
//                 leading: Icon(Icons.photo, color: Colors.black),
//                 title: const Text(
//                   'Gallery',
//                 ),
//                 onTap: () =>
//                 {provider.getImagegallery(), Navigator.pop(context)}),
//           ],
//         );
//       });
//   //ImageSource
// }