import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class listview extends StatelessWidget {
  const listview({super.key});

  @override
  Widget build(BuildContext context) {

    var names1=["Asha","Samanta","Aysha","Arun"];
    var names2=["female","female","female","male"];
    var names3=["5.4","5.6","5.6","5.9"];
    var names4=["hindu","christian","muslim","Hindu"];
    var names5=["ertyuio","zxcvbn","asdfgh","sdfghj"];
    var names6=["BCA","MCA","BSC","BCA"];
    var names7=["Designer","Designer","Teacher","Teacher"];
    return Scaffold(

      body:
      ListView.separated(itemBuilder: (context,index){
        return Container(
          height: 200,width: 200,color: Colors.pink.shade200,
          child: Row(
            children: [
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 180),
                    child: Text(names1[index],style: TextStyle(fontSize: 21,fontWeight: FontWeight.bold,color: Colors.black),),


                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 180),
                    child: Text(names2[index],style: TextStyle(fontSize: 21,fontWeight: FontWeight.bold,color: Colors.black),),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 180),
                    child: Text(names3[index],style: TextStyle(fontSize: 21,fontWeight: FontWeight.bold,color: Colors.black),),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right:180),
                    child: Text(names4[index],style: TextStyle(fontSize: 21,fontWeight: FontWeight.bold,color: Colors.black),),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 180),
                    child: Text(names5[index],style: TextStyle(fontSize: 21,fontWeight: FontWeight.bold,color: Colors.black),),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 180),
                    child: Text(names6[index],style: TextStyle(fontSize: 21,fontWeight: FontWeight.bold,color: Colors.black),),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 180),
                    child: Text(names7[index],style: TextStyle(fontSize: 21,fontWeight: FontWeight.bold,color: Colors.black),),
                  ),

                ],
              ),

                CircleAvatar(
                    backgroundColor: Colors.white,
                    radius: 30,
                    child: Icon(
                      Icons.person,
                      size: 50,
                      color: Colors.grey.shade500,
                    )),

            ],
          ),


        );
    } ,

    itemCount:names1.length ,



    scrollDirection: Axis.vertical,
    separatorBuilder: (context,index){
        return Divider(height: 4,thickness: 2,);

    }
    ));
  }
}
