import 'package:flutter/material.dart';
import 'package:matrimony/provider/Matrimonyprovider.dart';
import 'package:provider/provider.dart';

import 'homepage2.dart';

class request2 extends StatelessWidget {
  const request2({super.key});

  @override
  Widget build(BuildContext context) {
    // List<String> Reguest=[
    //   "Name :",
    //   "Phone :"
    // ];
    MatrimonyProvider provider = Provider.of<MatrimonyProvider>(context,listen: false);

    return
      SafeArea(
        child: Scaffold(backgroundColor: Colors.black,
          appBar: AppBar(leading: InkWell(onTap: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=> Homepage2()));
          },
              child: Icon(Icons.arrow_back)),
              title: Text("Requests",style: TextStyle(color: Colors.black,fontSize: 24,fontWeight: FontWeight.bold),)),
          body: Consumer<MatrimonyProvider>(
            builder: (context,value,child) {
              print("jhcgkhch"+value.Typeregister.length.toString());
              return ListView.builder(
                shrinkWrap: true,
                  physics: ScrollPhysics(),
                  itemCount:value.Typeregister.length,

                  itemBuilder:(BuildContext context,int index){
                var item1 = value.Typeregister[index];
                    return  Container(

                      height: 220,
                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),color: Colors.white,),
                      margin: EdgeInsets.only(top: 40,right: 30,left: 30),
                      child: Column(
                        children: [
                          SizedBox(height: 20,),
                          Container(height: 50,width: 270,
                            decoration: BoxDecoration(color: Colors.blueGrey,
                                borderRadius: BorderRadius.circular(10)),

                            child: Padding(
                              padding: const EdgeInsets.only(top: 13,left: 10),
                              child: Text(item1.nameregister,style: TextStyle(fontSize: 17,fontWeight: FontWeight.bold),),
                            ),),
                          SizedBox(height: 10,),
                          Container(height: 50,width: 270, decoration: BoxDecoration(color: Colors.blueGrey,
                              borderRadius: BorderRadius.circular(10)),
                            child: Padding(
                              padding: const EdgeInsets.only(top: 13,left: 10),
                              child: Text(item1.phoneregister,style: TextStyle(fontSize: 17,fontWeight: FontWeight.bold),),
                            ),),
                          SizedBox(height: 10,),
                          Padding(
                            padding: const EdgeInsets.only(left: 65),
                            child: Row(
                              children: [
                                Consumer<MatrimonyProvider>(
                                  builder: (context,value,child) {
                                    return Row(
                                      children: [
                                        InkWell(onTap: () {
                                           value.acceptRequest(item1.id,item1.nameregister,item1.phoneregister,context);
                                        },

                                          child: Container(height: 40,width:120 , decoration: BoxDecoration(color: Colors.black,
                                              borderRadius: BorderRadius.circular(10)),
                                            child: Center(child: Text("Approve",style: TextStyle(fontSize: 17,fontWeight: FontWeight.bold,color: Colors.white),)),
                                          ),
                                        ),
                                        SizedBox(width: 15,),
                                        InkWell(onTap: () {
                                           value.declineRequest(item1.id,context);
                                        },
                                          child: Container(height: 40,width:120 , decoration: BoxDecoration(color: Colors.black,
                                              borderRadius: BorderRadius.circular(10)),
                                            child: Center(child: Text("Reject",style: TextStyle(fontSize: 17,fontWeight: FontWeight.bold,color: Colors.white),)),
                                          ),
                                        ),
                                      ],
                                    );
                                  }
                                ),
                              ],
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
