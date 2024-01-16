import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:matrimony/constant/mycolors.dart';
import 'package:matrimony/user/profilepicture.dart';

import 'home page.dart';

class Aboutapp extends StatelessWidget {
  const Aboutapp({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(backgroundColor: bgcolor,
        body:
        InkWell(onTap: () {

          Navigator.pop(context,MaterialPageRoute(builder: (context) => Homepage(),));
        },
            child: Column(
              children: [
                Row(
                  children: [
                    Icon(Icons.arrow_back),
                    SizedBox(width: 100,),
                    Text("About",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 30,color: Colors.black),)
                  ],
                ),
                SizedBox(height: 40,),
                Text("Our matrimony app hosts millions of",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Colors.black),),
                Text("matchmarking profiles across location,",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Colors.black),),
                Text("And we enable our user to find the ",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Colors.black),),
                Text("most relevant profiles with easy to use",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Colors.black),),
                Text("Our matrimony app hosts millions of",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Colors.black),),
                Text("matchmarking profiles across location,",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Colors.black),),
                Text("And we enable our user to find the ",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Colors.black),),
                Text("most relevant profiles with easy to use",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Colors.black),),
                SizedBox(height: 40,),
                Text("Our matrimony app hosts millions of",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Colors.black),),
                Text("matchmarking profiles across location,",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Colors.black),),
                Text("And we enable our user to find the ",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Colors.black),),
                Text("most relevant profiles with easy to use",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Colors.black),),
                Text("Our matrimony app hosts millions of",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Colors.black),),
                Text("matchmarking profiles across location,",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Colors.black),),
                Text("And we enable our user to find the ",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Colors.black),),
                Text("most relevant profiles with easy to use",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Colors.black),),
              ],

            )
        ),
      ),
    );
  }
}
