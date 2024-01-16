import 'package:flutter/material.dart';
import 'package:matrimony/user/home%20page.dart';

import '../constant/mycolors.dart';
import '../constant/mywidgets.dart';
import 'moreinfo.dart';

class Request extends StatelessWidget {
  const Request({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return DefaultTabController(length: 2,
        child: SafeArea(
          child: Scaffold(backgroundColor: Colors.black,
            body:

            Container(height: height,
              width: width,
              child: Column(
                children: [
                  TabBar(
                    indicatorColor: boxcolor,
                    indicatorSize: TabBarIndicatorSize.label,
                    tabs: [
                      Tab(
                        child: Text("Accepted Request",
                            style: TextStyle(color: Colors.white, fontSize: 13, fontWeight: FontWeight.bold)),
                      ),
                      Tab(
                        child: Text("New Request",
                            style: TextStyle(color: Colors.white, fontSize: 15, fontWeight: FontWeight.bold)),
                      ),

                    ],

                  ),
                  Expanded(
                    child: TabBarView(children: [
                      SingleChildScrollView(
                        child: Column(
                          children: [SizedBox(height: 30,),

                            Container(height: height/3,width: width,
                              decoration: BoxDecoration(color: Colors.blueGrey,borderRadius: BorderRadius.circular(10)),
                              child:Column(
                                children: [
                                  Row(
                                    children: [
                                      Column(crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Text("name",style: TextStyle(fontSize: 24,color: Colors.black,fontWeight: FontWeight.bold),),
                                          SizedBox(height: 10,),
                                          Text("name",style: TextStyle(fontSize: 22,color: Colors.black,fontWeight: FontWeight.normal)),
                                          SizedBox(height: 10,),

                                          Text("name",style: TextStyle(fontSize: 22,color: Colors.black,fontWeight: FontWeight.normal)),
                                          SizedBox(height: 10,),

                                          Text("name",style: TextStyle(fontSize: 22,color: Colors.black,fontWeight: FontWeight.normal)),
                                          SizedBox(height: 10,),


                                          Text("name",style: TextStyle(fontSize: 22,color: Colors.black,fontWeight: FontWeight.normal)),
                                          SizedBox(width: 50,),
                                          SizedBox(height: 25,),



                                        ],
                                      ),
                                      SizedBox(width: 80,),
                                      Container(height: 170,
                                          width: 170,
                                          margin: EdgeInsets.all(5),
                                          child: ClipRRect(borderRadius: BorderRadius.circular(0),
                                              child: Column(
                                                children: [
                                                  Container(
                                                      child: Image.asset("assets/IMG2.png",scale:.5,)),
                                                  Icon(Icons.favorite_border,color: Colors.black,),

                                                ],
                                              ))),

                                    ],
                                  ),
                                  Row(
                                    children: [SizedBox(width: 15,),
                                      Container(height: 50,width: 150,decoration: BoxDecoration(
                                        color: Colors.white,borderRadius:BorderRadius.circular(10),),
                                        child:  Center(child: Text("Remove",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 22),)),
                                      ),


                                    ],
                                  )
                                ],
                              ),

                            ),


                          ]
                      ),

          ),
                      SingleChildScrollView(
                        child: Column(
                            children: [SizedBox(height: 30,),
                          Container(height: height/3,width: width,
                            decoration: BoxDecoration(color: Colors.blueGrey,borderRadius: BorderRadius.circular(10)),
                            child:Column(
                              children: [
                                Row(
                                  children: [
                                    Column(crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Text("name",style: TextStyle(fontSize: 24,color: Colors.black,fontWeight: FontWeight.bold),),
                                        SizedBox(height: 10,),
                                        Text("name",style: TextStyle(fontSize: 22,color: Colors.black,fontWeight: FontWeight.normal)),
                                        SizedBox(height: 10,),

                                        Text("name",style: TextStyle(fontSize: 22,color: Colors.black,fontWeight: FontWeight.normal)),
                                        SizedBox(height: 10,),

                                        Text("name",style: TextStyle(fontSize: 22,color: Colors.black,fontWeight: FontWeight.normal)),
                                        SizedBox(height: 10,),


                                        Text("name",style: TextStyle(fontSize: 22,color: Colors.black,fontWeight: FontWeight.normal)),
                                        SizedBox(width: 50,),
                                        SizedBox(height: 25,),



                                      ],
                                    ),
                                    SizedBox(width: 80,),
                                    Container(height: 170,
                                        width: 170,
                                        margin: EdgeInsets.all(5),
                                        child: ClipRRect(borderRadius: BorderRadius.circular(0),
                                            child: Column(
                                              children: [
                                                Image.asset("assets/IMG2.png",scale:.5,),
                                                Icon(Icons.favorite_border,color: Colors.black,),

                                              ],
                                            ))),

                                  ],
                                ),
                                Row(
                                  children: [SizedBox(width: 15,),
                                    Container(height: 50,width: 150,decoration: BoxDecoration(
                                      color: Colors.white,borderRadius:BorderRadius.circular(10),),
                                      child:  Center(child: Text("Accept",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 22),)),
                                    ),

                                    SizedBox(width: 60,),
                                    Container(height: 50,width: 150,decoration: BoxDecoration(
                                      color: Colors.white,borderRadius:BorderRadius.circular(10),),
                                      child: Center(child: Text("Decline",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 22),)),
                                     ),
                                  ],
                                )
                              ],
                            ),

                          ),
                           ]
                      ),
          //           Expanded(
          //             child: TabBarView(children: [
          //
          //             ]
          //
          //
          //             ),
          //           ),
          //           Expanded(
          //             child: TabBarView(children: [
          //               SingleChildScrollView(
          //                 child: Column(
          //                     children: [SizedBox(height: 30,),
          //                       Stack(children:[ Container(height: 250,width: 350,
          //                         decoration:
          //                         BoxDecoration(  borderRadius: BorderRadius.circular(10),color: bgcolor
          //                         ),   ),
          //                         SizedBox(height: 25,),
          //
          //                         Positioned(left: 20,
          //                             child: Text("Roma",style: TextStyle(color: Colors.black,fontSize: 35,fontWeight: FontWeight.bold))),
          //
          //                         Positioned(bottom: 150,left: 20,
          //                             child: Text("christian",style: TextStyle(color: Colors.black,fontSize: 25,fontWeight: FontWeight.normal))),
          //                         Positioned(bottom: 120,left: 20,
          //                             child: Text("Kereala",style: TextStyle(color: Colors.black,fontSize: 25,fontWeight: FontWeight.normal))),
          //                         Positioned(bottom: 90,left: 20,
          //                             child: Text("UI,UX designer",style: TextStyle(color: Colors.black,fontSize: 25,fontWeight: FontWeight.normal))),
          //                         Positioned(bottom: 60,left: 20,
          //                             child: Text("Computer science",style: TextStyle(color: Colors.black,fontSize: 25,fontWeight: FontWeight.normal))),
          //                         Positioned(bottom: 230,left: 240,
          //                             child: Text("26 Years,5'4 feet",style: TextStyle(color: Colors.black,fontSize: 15,fontWeight: FontWeight.normal))),
          //                         Positioned(bottom: 110,left: 220,
          //                             child: Image.asset("assets/homeimage4.png",scale: 1,)),
          //
          //                         Positioned(bottom: 70,left: 300,
          //                             child: Icon(Icons.save)),
          //                         Padding(
          //                           padding: const EdgeInsets.only(top:190 ,left: 20),
          //                           child: InkWell(onTap: () {
          //                             Navigator.push(context, MaterialPageRoute(builder: (context) => info (),));
          //                           },
          //                               child: Positioned(child: mybtn(height/18,width/3 , "Accept",18,FontWeight.w600))),
          //                         ),
          //                         Padding(
          //                           padding: const EdgeInsets.only(top:190 ,left: 170),
          //                           child: InkWell(onTap: () {
          //                             Navigator.push(context, MaterialPageRoute(builder: (context) => info (),));
          //                           },
          //                               child: Positioned(child: mybtn(height/18,width/3 , "Remove",18,FontWeight.w600))),
          //                         ),
          //                       ],
          //                       ),
          //                       SizedBox(height: 20,),
          //                       Stack(
          //                           children:[ Container(height: 250,width: 350,
          //                             decoration:
          //                             BoxDecoration(  borderRadius: BorderRadius.circular(10),color: bgcolor
          //                             ),   ),
          //
          //                             SizedBox(height: 25,),
          //
          //                             Positioned(left: 20,
          //                                 child: Text("Aysha",style: TextStyle(color: Colors.black,fontSize: 35,fontWeight: FontWeight.bold))),
          //
          //                             Positioned(bottom: 150,left: 20,
          //                                 child: Text("Muslim",style: TextStyle(color: Colors.black,fontSize: 25,fontWeight: FontWeight.normal))),
          //                             Positioned(bottom: 120,left: 20,
          //                                 child: Text("Kereala",style: TextStyle(color: Colors.black,fontSize: 25,fontWeight: FontWeight.normal))),
          //                             Positioned(bottom: 90,left: 20,
          //                                 child: Text("UI,UX designer",style: TextStyle(color: Colors.black,fontSize: 25,fontWeight: FontWeight.normal))),
          //                             Positioned(bottom: 60,left: 20,
          //                                 child: Text("Computer science",style: TextStyle(color: Colors.black,fontSize: 25,fontWeight: FontWeight.normal))),
          //                             Positioned(bottom: 230,left: 240,
          //                                 child: Text("26 Years,5'4 feet",style: TextStyle(color: Colors.black,fontSize: 15,fontWeight: FontWeight.normal))),
          //                             Positioned(bottom: 110,left: 220,
          //                                 child: Image.asset("assets/homeimage3.png",scale: 1,)),
          //
          //                             Positioned(bottom: 70,left: 300,
          //                                 child: Icon(Icons.save)),
          //                             Padding(
          //                               padding: const EdgeInsets.only(top:190 ,left: 20),
          //                               child: InkWell(onTap: () {
          //                                 Navigator.push(context, MaterialPageRoute(builder: (context) => info (),));
          //                               },
          //                                   child: Positioned(child: mybtn(height/18,width/3 , "Accept",18,FontWeight.w600))),
          //                             ),
          //                             Padding(
          //                               padding: const EdgeInsets.only(top:190 ,left: 190),
          //                               child: InkWell(onTap: () {
          //                                 Navigator.push(context, MaterialPageRoute(builder: (context) => info (),));
          //                               },
          //                                   child: Positioned(child: mybtn(height/18,width/3 , "Remove",18,FontWeight.w600))),
          //                             ),
          //                           ]
          //                       ),
          //
          //                     ]
          //                 ),
          //
          //               ),
          //
          //
          //
          //
          //     ],
          //   ),
          //
          //
          // ),
                      )]
        )
        ),

                ]),
            )
    )));
  }
}
