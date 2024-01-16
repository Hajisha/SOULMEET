import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:matrimony/constant/mycolors.dart';
import 'package:matrimony/constant/mywidgets.dart';
import 'package:matrimony/provider/loginprovider.dart';
import 'package:provider/provider.dart';

import 'Register.dart';
import 'otp page.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return SafeArea(
      child: Scaffold(backgroundColor: bgcolor,
        body:  SingleChildScrollView(
          child: Column(
            children: [
              Container(
                width: width,
                height:height/2.8,
                child: Image.asset("assets/new2login.png",),
              ),
              SizedBox(height: 70,),

              Consumer<LoginProvider>(
                builder: (context,value,child) {
                  return TextField(
                    controller: value.Loginphnnumber,
                    style: TextStyle(color: Colors.white),
                    keyboardType: TextInputType.number,cursorColor: Colors.white,
                    inputFormatters: [LengthLimitingTextInputFormatter(10)],

                    decoration: InputDecoration(
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.white,width: 2)
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(
                          color: Colors.white
                        )
                      ),
                      hintText: "phone number",
                      hintStyle: TextStyle(color: Colors.grey),
                      prefixIcon: Icon(Icons.phone,color: Colors.white,),
                    ),
                  );
                }
              ),

            Consumer<LoginProvider>(
              builder: (context,value,child) {
                return Padding(
                  padding: const EdgeInsets.only(top:100 ),
                  child: InkWell(onTap: () {
                    value.otpverifycontroller.clear();
                    value.sendotp(context);

                    Navigator.push(context, MaterialPageRoute(builder: (context) => OtpScreen(),));
                  },
                      child: mybtn(height/18,width/3 , "login",18,FontWeight.w600,)),
                );
              }
            ),
              // InkWell(onTap: () {
              //   Navigator.push(context, MaterialPageRoute(builder:  (context) => register(),));
              // },
              //  
              //   child: Padding(
              //
              //     padding: const EdgeInsets.symmetric(vertical: 10),
              //     child: mybtn(height/18,width/3 , "Create",18,FontWeight.w600),
              //   ),
              // ),
             SizedBox(height: 30,),
              InkWell(onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>register(from: "NEW",oldid: "",)));
              },
                  child: Text("Create an Account",style: TextStyle(color: Colors.white,fontSize: 18),)),
              SizedBox(height: 15,),
              Text("Sign in",style: TextStyle(color: Colors.white,fontSize: 15),)
            ],
          ),
        ),
      ),
    );
  }
}
