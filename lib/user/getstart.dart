import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'login.dart';

class getstart extends StatefulWidget {
  const getstart({super.key});

  @override
  State<getstart> createState() => _getstartState();
}

class _getstartState extends State<getstart> {
  // get height => null;
  //
  // get width => null;

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return Scaffold(
      body:Column(
        children: [
          Stack(children: [
            Container(
                height: height,
                width: width,
                child: InkWell(onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>Login()));
                },
                    child: Image.asset("assets/getstart.png"))),
            Positioned(top:height/4,left: width/7.5
                ,
                child:
            Text("SOULMEET",style: TextStyle(fontSize: 50,color: Colors.white,fontFamily: "fasterOne"),)),
            // Positioned(bottom: 10,left: 200,
            //   child: InkWell(onTap: () {
            //     Navigator.push(context, MaterialPageRoute(builder: (context) => Login(),));
            //   },
            //       child:Padding(
            //         padding: const EdgeInsets.only(right: 100),
            //         child: Container(height: 40,width: 100,color: Colors.pinkAccent,
            //             child: Center(child: Text("GetStart",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 18),))),
            //       )),
            // ),
          ],

    ),

        ],
      ),
      
    );
  }
}

