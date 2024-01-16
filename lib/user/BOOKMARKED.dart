import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../provider/Matrimonyprovider.dart';
import 'moreinfo.dart';

class Saved extends StatelessWidget {

  const Saved({super.key});

  @override
  Widget build(BuildContext context) {

    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    MatrimonyProvider provider = Provider.of<MatrimonyProvider>(context,listen: false);
    return SafeArea(
      child: Scaffold(backgroundColor: Colors.black,
          body:
          SingleChildScrollView(
            child: Column(

              children: [
                Center(child: Text("Bookmarked",style: TextStyle(color: Colors.white,fontSize: 25,fontWeight: FontWeight.bold))),

                Consumer<MatrimonyProvider>(
                    builder: (context,value,child) {
                      return ListView.builder(
                          shrinkWrap: true,
                          physics: ScrollPhysics(),
                          itemCount: value.listAbout.length,

                          itemBuilder: (context,index) {
                            var item = value.listAbout[index];
                            print(item.id+"fkfjjfj");
                            return Container(
                              margin: EdgeInsets.symmetric(horizontal:10,vertical: 10),
                              height: height/1.8,
                              width: width/3,
                              decoration: BoxDecoration(
                                color: Colors.white,borderRadius:BorderRadius.circular(10),),
                              child: SingleChildScrollView(scrollDirection: Axis.horizontal,
                                child: Column(
                                  children: [
                                    Row(
                                      children: [
                                        Column(crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Text(item.name,style: TextStyle(fontSize: 20,color: Colors.black,fontWeight: FontWeight.bold),),

                                            Text(item.Gender,style: TextStyle(fontSize: 18,color: Colors.black,fontWeight: FontWeight.normal)),
                                            Text(item.height,style: TextStyle(fontSize: 18,color: Colors.black,fontWeight: FontWeight.normal)),
                                            Text(item.Age,style: TextStyle(fontSize: 18,color: Colors.black,fontWeight: FontWeight.normal)),

                                            // Text(item.caste,style: TextStyle(fontSize: 18,color: Colors.black,fontWeight: FontWeight.normal)),
                                            Text(item.address,style: TextStyle(fontSize: 18,color: Colors.black,fontWeight: FontWeight.normal)),
                                            Text(item.Education,style: TextStyle(fontSize: 18,color: Colors.black,fontWeight: FontWeight.normal)),
                                            // Text(item.working,style: TextStyle(fontSize: 18,color: Colors.black,fontWeight: FontWeight.normal)),
                                            // Text(item.income,style: TextStyle(fontSize: 18,color: Colors.black,fontWeight: FontWeight.normal)),



                                          ],
                                        ),
                                        SizedBox(width: 30,),
                                        Column(
                                          children: [
                                            Container(height: 170,
                                                width: 170,
                                                margin: EdgeInsets.all(5),
                                                child: ClipRRect(borderRadius: BorderRadius.circular(10),
                                                    child: Image.network(value.listAbout[index].photo4))),
                                            Icon(Icons.favorite,color: Colors.red,),
                                            SizedBox(height: 227,),

                                          ],
                                        )
                                      ],
                                    ),

                                    Row(
                                      children: [SizedBox(width: 30,),
                                        InkWell(onTap: (){
                                          Navigator.push(context, MaterialPageRoute(builder: (context)=>info(name: item.name,Age: item.Age,Gender: item.Gender,
                                            caste: item.caste,address:item.address ,Education: item.Education,working: item.working,income: item.income,photo4: item.photo4,age_p: item.age_p,
                                              height_p: item.height_p,job_p: item.job_p,caste_p: item.caste_p,education_p: item.education_p,)));
                                        },
                                          child:
                                          Container(height:40,width: 130,decoration: BoxDecoration(border:  Border.all(color: Colors.black,width: 2),color: Colors.blueGrey,),
                                            child: Center(child: Text("More info",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 22),)),
                                          ),
                                        ),
                                        SizedBox(width: 40,),
                                        Column(
                                          children: [

                                            Container(height: 40,width: 130,decoration: BoxDecoration(border:  Border.all(color: Colors.black,width: 2),color: Colors.blueGrey,),
                                              child: Center(child: Text("Request",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 22),)),
                                            ),
                                          ],
                                        ),

                                      ],
                                    )
                                  ],
                                ),

                              ),

                            );
                          }
                      );
                    }
                )
              ],
            ),
          )
      ),

    );
  }

}

