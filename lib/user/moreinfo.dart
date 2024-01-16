import 'package:flutter/material.dart';
import 'package:matrimony/provider/Matrimonyprovider.dart';
import 'package:provider/provider.dart';

import '../constant/mycolors.dart';
import '../constant/mywidgets.dart';
import 'home page.dart';

class info extends StatelessWidget {
  String name;
  String Gender;
  String Age;
  String caste;
  String address;
  String Education;
  String working;
  String income;
  String photo4;
  String age_p;
  String height_p;
  String caste_p;
  String job_p;
  String education_p;

   info({super.key,required this.name,required this.Gender,
    required this.Age,required this.caste,required this.address,required this.Education,required this.working,required this.income
    ,required this.photo4,required this.age_p,required this.height_p,required this.caste_p,required this.job_p,required this.education_p

});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return DefaultTabController(length: 2,
      child: Scaffold(backgroundColor: bgcolor,
        body:
        Consumer<MatrimonyProvider>(
          builder: (contex,value,child) {
            return Column(
              children: [SizedBox(height: 30,),
                Stack(children:[
                  SizedBox( width: double.infinity,
                    child: Container(height: 350,
                      width:200,


                       child: Image.network(photo4,),
            ),
                  ),

                  Positioned(bottom: 30,left: 50,
                      child: Text(name,style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 28),)),
              Positioned(bottom: 5,left: 50,
                  child: Text(Age,style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 25),)),
                  InkWell(onTap: () {

                    Navigator.pop(context,MaterialPageRoute(builder: (context) => Homepage(),));
                  },
                      child: Icon(Icons.arrow_back,color: Colors.white,)),
      ]),

                TabBar(
                  indicatorColor: boxcolor,
                  indicatorSize: TabBarIndicatorSize.label,
                  tabs: [
                    Tab(
                      child: Text("personal info",
                          style: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold)),
                    ),
                    Tab(
                      child: Text("Expectation ",
                          style: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold)),
                    ),
                  ],
                ),
                Expanded(
                  child: TabBarView(children: [
                    SingleChildScrollView(
                      child: Column(mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Text("CASTE    :                                ",
                                  style: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.w700)),
                              Text(caste,
                                  style: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.w700)),
                            ],
                          ),
                          SizedBox(height: 30,),
                          Row(
                            children: [
                              Text("Education :                              ",
                                  style: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.w700)),
                              Text(Education,
                                  style: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.w700)),
                            ],
                          ),
                          SizedBox(height: 30,),
                          Row(
                            children: [
                              Text("Proffession:                             ",
                                  style: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.w700)),
                              Text(working,
                                  style: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.w700)),
                            ],
                          ),
                          SizedBox(height: 30,),
                          Row(
                            children: [
                              Text("income:                                    ",
                                  style: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.w700)),
                              Text(income,
                                  style: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.w700)),
                            ],
                          ),
                          SizedBox(height: 30,),
                          // Row(
                          //   children: [
                          //     Text("Height    :                                 ",
                          //         style: TextStyle(color: Colors.black, fontSize: 20, fontWeight: FontWeight.w700)),
                          //     Text(,
                          //         style: TextStyle(color: Colors.black, fontSize: 20, fontWeight: FontWeight.w700)),
                          //   ],
                          // ),
                          // Padding(
                          //   padding: const EdgeInsets.only(top:60 ,left: 40),
                          //   child: InkWell(onTap: () {
                          //     Navigator.push(context, MaterialPageRoute(builder: (context) => Request (),));
                          //   },
                          //       child: Positioned(child: mybtn(height/18,width/3 , "Connect Request",18,FontWeight.w600))),
                          // ),

                        ],
                      ),


                    ),
                    SingleChildScrollView(
                      child: Column(mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Text("CASTE           :                          ",
                                  style: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.w700)),
                              Text(caste_p,
                                  style: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.w700)),
                            ],
                          ),
                          SizedBox(height: 30,),
                          Row(
                            children: [
                              Text("Education      :                         ",
                                  style: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.w700)),
                              Text(education_p,
                                  style: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.w700)),
                            ],
                          ),
                          SizedBox(height: 30,),
                          Row(
                            children: [
                              Text("Proffession  :                          ",
                                  style: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.w700)),
                              Text(job_p,
                                  style: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.w700)),
                            ],
                          ),
                          SizedBox(height: 30,),
                          Row(
                            children: [
                              Text("Age               :                          ",
                                  style: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.w700)),
                              Text(age_p,
                                  style: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.w700)),
                            ],
                          ),
                          SizedBox(height: 30,),

                          // Padding(
                          //   padding: const EdgeInsets.only(top:60 ,left: 40),
                          //   child: InkWell(onTap: () {
                          //     Navigator.push(context, MaterialPageRoute(builder: (context) => Request (),));
                          //   },
                          //       child: Positioned(child: mybtn(height/18,width/3 , "Connect Request",18,FontWeight.w600))),
                          // ),
                        ],
                      ),



                    ),
                  ]  ),
                ),
                 ],
            );
          }
        ),

      ),
    );
  }
}
