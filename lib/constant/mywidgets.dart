import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'mycolors.dart';

Widget mybtn(double height,double width,String txt,double fontsz,FontWeight fntwegth){
  return Container(height: height,
      width: width,
    color: Colors.blueGrey,child: Center(child: Text(txt,
      style: TextStyle(color: Colors.black,fontSize:fontsz,fontWeight: fntwegth  ),)
      ) );

}