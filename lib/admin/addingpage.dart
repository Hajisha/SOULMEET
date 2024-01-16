import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:matrimony/constant/mycolors.dart';
import 'package:matrimony/constant/myfunctions.dart';

import '../constant/mywidgets.dart';
import 'homepage2.dart';

class AddingPage extends StatelessWidget {
  const AddingPage({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return SafeArea(
      child: Scaffold(
        backgroundColor: bgcolor,
          body:
          Column(mainAxisAlignment: MainAxisAlignment.start,
              children: [
              InkWell(onTap: () {
      Navigator.pop(context,MaterialPageRoute(builder: (context) => Homepage2(),));
      },
          child: Row(
            children: [
              Icon(Icons.arrow_back),
              SizedBox(width: 25,),
              Text("profile",style: TextStyle(fontSize: 24,color: Colors.black,fontWeight: FontWeight.bold),),
            ],
          )
      ),
                CircleAvatar(
                  backgroundColor: Colors.white,
                  radius: 70,
                  child:Icon(Icons.person,size: 90,color: Colors.pinkAccent,) ),
                SizedBox(height: 100,),


                Center(
                  child: Container(
                    width: 300,
                    height: 70,
                    child: TextField(
                      keyboardType: TextInputType.name,
                      inputFormatters: [],
                      decoration: InputDecoration(
                          hintText: "Name ",
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(15),
                              borderSide: BorderSide(
                                  color: Colors.pink
                              )


                          )


                      ),
                    ),
                  ),
                ),
                SizedBox(height: 30,),
                Center(
                  child: Container(
                    width: 300,
                    height: 70,
                    child: TextField(
                      keyboardType: TextInputType.name,
                      inputFormatters: [],
                      decoration: InputDecoration(
                          hintText: "phone no ",
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(15),
                              borderSide: BorderSide(
                                  color: Colors.pink
                              )


                          )


                      ),
                    ),
                  ),
                ),

              SizedBox(height: 60,),

                Padding(
                  padding: const EdgeInsets.only(top:100 ),
                  child: InkWell(onTap: () {
                   Navigator.pop(context);
                  },
                      child: mybtn(height/18,width/3 , "Register",18,FontWeight.w600)),
                ),
              ]
      )
      ),
    );
  }
}
