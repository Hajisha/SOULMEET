import 'dart:async';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:matrimony/provider/loginprovider.dart';
import 'package:provider/provider.dart';

import 'getstart.dart';


class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {


  @override
  void initState() {
    FirebaseAuth auth = FirebaseAuth.instance;
    var loginUser = auth.currentUser;

    // TODO: implement initState
    super.initState();
    LoginProvider loginProvider =Provider.of<LoginProvider>(context ,listen: false);

    Timer( Duration(seconds: 3), () {

      if (loginUser == null) {

        Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => getstart(),));
      }
      else {
        loginProvider.userAuthorisation(loginUser.phoneNumber, context);
      }
    });
  }


  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Container(height: height,
        width: width,
        color: Colors.black,
        child: Center(
          child: Text("SOULMEET",style: TextStyle(fontWeight: FontWeight.bold,
              fontSize: 55,  color:Colors.blueGrey,fontFamily: "fasterOne"),),
        ),
      ),

    );
  }
}