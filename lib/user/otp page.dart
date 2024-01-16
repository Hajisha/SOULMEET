import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pinput/pinput.dart';
import 'package:provider/provider.dart';

import '../constant/mycolors.dart';
import '../constant/mywidgets.dart';
import '../provider/loginprovider.dart';
import 'Register.dart';

class OtpScreen extends StatelessWidget {
  const OtpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return Scaffold(backgroundColor: bgcolor,
      body:
        Column(
          children: [SizedBox(height: 50,),
            Text("Enter Your OTP",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 24),),
            SizedBox(height: 50,),
            const Column(crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("please enter the verification code"
                    ,style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 20),),
              ],
            ),
            SizedBox(height: 80,),
            Consumer<LoginProvider>(
                builder: (context,vale,child) {
                  return Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child:Pinput(
                      controller:vale.otpverifycontroller,
                      length: 6,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      defaultPinTheme: PinTheme(
                          textStyle:
                          TextStyle(fontWeight: FontWeight.bold),
                          height: 50,
                          width: 50,
                          decoration: BoxDecoration( boxShadow: [
                            BoxShadow(
                              color: Colors.blueGrey,

                            ),
                          ], borderRadius: BorderRadius.circular(15),
                              border: Border.all(width: 1,
                                  color:Colors.blueGrey.withOpacity(0.9)))),

                      onCompleted: (pin){
                        vale.verify(context);

                      },
                    ),
                  );
                }
            ),
            SizedBox(height: 100,),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: mybtn(height/18,width/3 , "Verify",18,FontWeight.w600),
            ),
          ],
        )




    );
  }
}
