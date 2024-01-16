import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:matrimony/provider/Matrimonyprovider.dart';
import 'package:provider/provider.dart';


import 'usermoredetails2.dart';
import 'homepage2.dart';
import 'navigationbar2.dart';

class userprofile2 extends StatelessWidget {
  const userprofile2({super.key});

  @override
  Widget build(BuildContext context) {

    MatrimonyProvider provider = Provider.of<MatrimonyProvider>(context,listen: false);
    provider.getAbout();
    return
      SafeArea(
        child: Scaffold(backgroundColor: Colors.black,
          appBar: AppBar(leading: InkWell(onTap: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=> Homepage2()));
          },
              child: Icon(Icons.arrow_back)),
            title: Text("Users",style: TextStyle(color: Colors.black,fontSize: 24,fontWeight: FontWeight.bold),)),
          body: Consumer<MatrimonyProvider>(
            builder: (context,value,child) {
              print("hfgrkjbgffrjghb"+value.Typeregister.length.toString());

              return ListView.builder(physics: ScrollPhysics(),
                  shrinkWrap: true,
                  itemCount:value.Typeregister.length,

                  itemBuilder:(BuildContext context,int index){
                    var item2 = value.Typeregister[index];
                    var item = value.listAbout[index];

                    return  Container(

                      height: 220,
                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),color: Colors.white,),
                      margin: EdgeInsets.only(top: 40,right: 30,left: 30),
                      child: Column(
                        children: [
                          SizedBox(height: 20,),
                          Container(height: 50,width: 240,

                            decoration: BoxDecoration(color: Colors.blueGrey,
                                borderRadius: BorderRadius.circular(10)),

                            child: Padding(
                              padding: const EdgeInsets.only(top: 13,left: 10),
                              child: Text(item2.nameregister,style: TextStyle(fontSize: 17,fontWeight: FontWeight.bold),),
                            ),),
                          SizedBox(height: 10,),
                          Container(height: 50,width: 240, decoration: BoxDecoration(color: Colors.blueGrey,
                              borderRadius: BorderRadius.circular(10)),
                            child: Padding(
                              padding: const EdgeInsets.only(top: 13,left: 10),
                              child: Text(item2.phoneregister,style: TextStyle(fontSize: 17,fontWeight: FontWeight.bold),),
                            ),),
                          SizedBox(height: 10,),
                          Padding(
                            padding: const EdgeInsets.only(left: 65),
                            child: Consumer<MatrimonyProvider>(
                              builder: (context,value,child) {
                                return InkWell(onTap: (){
                                  Navigator.push(context, MaterialPageRoute(builder: (context)=>moredetailadmin(name: item.name,Age: item.Age,Gender: item.Gender,
                                    caste: item.caste,address:item.address ,Education: item.Education,working: item.working,income: item.income,photo4: item.photo4,age_p: item.age_p,
                                    height_p: item.height_p,job_p: item.job_p,caste_p: item.caste_p,education_p: item.education_p,)));
                                },
                                  child: Container(height: 40,width:120 , decoration: BoxDecoration(color: Colors.black,
                                      borderRadius: BorderRadius.circular(10)),
                                    child: Center(child: Text("More Details",style: TextStyle(fontSize: 17,fontWeight: FontWeight.bold,color: Colors.white),)),
                                  ),
                                );
                              }
                            ),
                          ),

                        ],
                      ),


                    );
                  } );
            }
          ),
        ),
      );
  }
}