import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:matrimony/provider/Matrimonyprovider.dart';
import 'package:matrimony/user/login.dart';
import 'package:provider/provider.dart';

import '../constant/mywidgets.dart';
import 'navigationbar.dart';


class AboutPage extends StatelessWidget {
  String userid;
   AboutPage({super.key,required this.userid});
  final formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {

    print("hdvchdvc"+userid);
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return SafeArea(
      child: Scaffold(backgroundColor: Colors.black,
        body:
        SingleChildScrollView(
          child: Form( key: formKey,
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 400),
                  child: InkWell(onTap: () {
                    // Navigator.pop(context,MaterialPageRoute(builder: (context) => register(),));
                  },
                      child: Icon(Icons.arrow_back,color: Colors.white,)),
                ),

                Center(
                  child:
                  Consumer<MatrimonyProvider>(builder: (context, value, child) {
                    return value.fileaboutImage != null
                        ? Center(
                      child: CircleAvatar(
                        backgroundColor: Colors.white,
                        radius: 70,
                        backgroundImage: FileImage(
                          value.fileaboutImage!,
                        ),
                      ),
                    )
                        : value.aboutimageUrl != ""
                        ? Center(
                      child: CircleAvatar(
                        backgroundColor: Colors.white,
                        radius: 70,
                        backgroundImage: NetworkImage(value.aboutimageUrl),
                      ),
                    )
                        : Center(
                      child: InkWell(
                        onTap: () {
                          showBottomSheet(context);
                        },
                        child: CircleAvatar(
                            backgroundColor: Colors.white,
                            radius: 70,
                            child: Icon(
                              Icons.image,
                              size: 90,
                              color: Colors.grey,
                            )),
                      ),
                    );
                  }),
                ),
      SizedBox(height: 50,),






                SizedBox(height: 30,),
                Padding(
                  padding: const EdgeInsets.only(right: 360),
                  child: Row(
                    children: [
                      Text("Name ",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize:15),),

                    ],
                  ),

                ),

                Consumer<MatrimonyProvider>(
                  builder: (context,value,child) {
                    return TextFormField(
                      controller:value.typename2controller,
                      style: TextStyle(color: Colors.white),
                      keyboardType: TextInputType.name,
                      inputFormatters: [],
                      decoration: InputDecoration(
                        hintText: "Name ",
                      ),
                      validator: (value) {
                      if (value!.isEmpty) {
                        return "This field is Required";
                      } else {

                      }
                    },
                    );

                  }
                ),
                SizedBox(height: 15,),
                Padding(
                  padding: const EdgeInsets.only(right: 347),
                  child: Text("Gender",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 15),),
                ),
             Consumer<MatrimonyProvider>(
               builder: (context,val2,child) {
                 return Row(
            children: [
            Radio(
            activeColor: Colors.blueGrey,
            value: "male ",
            groupValue:val2.checkvalue2,
            onChanged: (value){
                  val2.checkvalue2 = value.toString();
                  val2.notifyListeners();
            }
      ),


             Text(
                  "Male",
                  style:
                  TextStyle(fontWeight: FontWeight.w300, fontSize: 15, color: Colors.white,fontFamily: "ink nut"),
            ),


              Consumer<MatrimonyProvider>(
                  builder: (context,val2,child) {
                    return Row(
                      children: [
                        Radio(
                            activeColor: Colors.blueGrey,
                            value: "female ",
                            groupValue:val2.checkvalue2,
                            onChanged: (value){
                              val2.checkvalue2 = value.toString();
                              val2.notifyListeners();
                            }
                        ),
                        Text(
                          "Female",
                          style:
                          TextStyle(fontWeight: FontWeight.w300, fontSize: 15, color: Colors.white,fontFamily: "ink nut"),
                        ),

                        Consumer<MatrimonyProvider>(
                            builder: (context,val2,child) {
                              return Row(
                                children: [
                                  Radio(
                                      activeColor: Colors.grey,
                                      value: "other ",
                                      groupValue:val2.checkvalue2,
                                      onChanged: (value){
                                        val2.checkvalue2 = value.toString();
                                        val2.notifyListeners();
                                      }
                                  ),
                                  Text(
                                    "other",
                                    style:
                                    TextStyle(fontWeight: FontWeight.w300, fontSize: 15, color: Colors.white,fontFamily: "ink nut"),
                                  ),



                                ],
                              );
                            }
                        ),
                      ],
                    );
                  }
              ),


            ],
    );
               }
             ),

SizedBox(height: 35,),
                Padding(
                  padding: const EdgeInsets.only(right: 350),
                  child: Text("Height ",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 15),),
                ),
                Consumer<MatrimonyProvider>(
                    builder: (context,val2,child) {
                      return Row(
                        children: [
                          Radio(
                              activeColor: Colors.blueGrey,
                              value: "Tall ",
                              groupValue:val2.checkvalue4,
                              onChanged: (value){
                                val2.checkvalue4 = value.toString();
                                val2.notifyListeners();
                              }
                          ),


                          Text(
                            "Tall",
                            style:
                            TextStyle(fontWeight: FontWeight.w300, fontSize: 15, color: Colors.white,fontFamily: "ink nut"),
                          ),


                          Consumer<MatrimonyProvider>(
                              builder: (context,val2,child) {
                                return Row(
                                  children: [
                                    Radio(
                                        activeColor: Colors.blueGrey,
                                        value: "Average ",
                                        groupValue:val2.checkvalue4,
                                        onChanged: (value){
                                          val2.checkvalue4= value.toString();
                                          val2.notifyListeners();
                                        }
                                    ),
                                    Text(
                                      "Average",
                                      style:
                                      TextStyle(fontWeight: FontWeight.w300, fontSize: 15, color: Colors.white,fontFamily: "ink nut"),
                                    ),

                                    Consumer<MatrimonyProvider>(
                                        builder: (context,val2,child) {
                                          return Row(
                                            children: [
                                              Radio(
                                                  activeColor: Colors.grey,
                                                  value: "Short ",
                                                  groupValue:val2.checkvalue4,
                                                  onChanged: (value){
                                                    val2.checkvalue4 = value.toString();
                                                    val2.notifyListeners();
                                                  }
                                              ),
                                              Text(
                                                "Short",
                                                style:
                                                TextStyle(fontWeight: FontWeight.w300, fontSize: 15, color: Colors.white,fontFamily: "ink nut"),
                                              ),



                                            ],
                                          );
                                        }
                                    ),
                                  ],
                                );
                              }
                          ),


                        ],
                      );
                    }
                ),
                SizedBox(height: 15,),
                Padding(
                  padding: const EdgeInsets.only(right: 350),
                  child: Text("Age ",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 15),),
                ),
                Consumer<MatrimonyProvider>(
                    builder: (context,value,child) {
                      return Consumer<MatrimonyProvider>(
                          builder: (context,value,child) {
                            return TextFormField(
                              controller:value.typeAge3controller ,
                              style: TextStyle(color: Colors.white),
                              keyboardType: TextInputType.number,
                              inputFormatters: [LengthLimitingTextInputFormatter(3)],
                              decoration: InputDecoration(
                                hintText: "Enter your Age",
                              ),
                              validator: (value) {
                                if (value!.isEmpty) {
                                  return "This field is Required";
                                } else {

                                }
                              },
                            );
                          }
                      );
                    }
                ),

                SizedBox(height: 15,),
                Padding(
                  padding: const EdgeInsets.only(right: 370),
                  child: Text("Caste",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 15),),
                ),

                Consumer<MatrimonyProvider>(
                    builder: (context,val2,child) {
                      return Row(
                        children: [
                          Radio(
                              activeColor: Colors.blueGrey,
                              value: "muslim ",
                              groupValue:val2.checkvalue3,
                              onChanged: (value){
                                val2.checkvalue3 = value.toString();
                                val2.notifyListeners();
                              }
                          ),
                          Text(
                            "Muslim",
                            style:
                            TextStyle(fontWeight: FontWeight.w300, fontSize: 15, color: Colors.white,fontFamily: "ink nut"),
                          ),

                          Consumer<MatrimonyProvider>(
                              builder: (context,val2,child) {
                                return Row(
                                  children: [
                                    Radio(
                                        activeColor: Colors.blueGrey,
                                        value: "hindu ",
                                        groupValue:val2.checkvalue3,
                                        onChanged: (value){
                                          val2.checkvalue3 = value.toString();
                                          val2.notifyListeners();
                                        }
                                    ),
                                    Text(
                                      "Hindu",
                                      style:
                                      TextStyle(fontWeight: FontWeight.w300, fontSize: 15, color: Colors.white,fontFamily: "ink nut"),
                                    ),


                                    Consumer<MatrimonyProvider>(
                                        builder: (context,val2,child) {
                                          return Row(
                                            children: [
                                              Radio(
                                                  activeColor: Colors.grey,
                                                  value: "christian ",
                                                  groupValue:val2.checkvalue3,
                                                  onChanged: (value){
                                                    val2.checkvalue3 = value.toString();
                                                    val2.notifyListeners();
                                                  }
                                              ),
                                              Text(
                                                "christian",
                                                style:
                                                TextStyle(fontWeight: FontWeight.w300, fontSize: 15, color: Colors.white,fontFamily: "ink nut"),
                                              ),



                                            ],
                                          );
                                        }
                                    ),

                                  ],
                                );
                              }
                          ),


                        ],
                      );
                    }
                ),










                SizedBox(height: 15,),
                Padding(
                  padding: const EdgeInsets.only(right: 350),
                  child: Text("Address",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 15),),
                ),
                Consumer<MatrimonyProvider>(
                  builder: (context,value,child) {
                    return TextFormField(controller: value.typeAddresscontroller,
                      style: TextStyle(color: Colors.white),
                      keyboardType: TextInputType.text,
                      inputFormatters: [],
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
                        hintText: "Address",

                      ),
                      validator: (value) {
                        if (value!.isEmpty) {
                          return "This field is Required";
                        } else {

                        }
                      },
                    );
                  }
                ),
                Text("Proffessional Info",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 24 ),),
                SizedBox(height: 15,),
                Padding(
                  padding: const EdgeInsets.only(right: 295),
                  child: Text("Education",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 20),),
                ),
                Consumer<MatrimonyProvider>(
                  builder: (context,value,child) {
                    return TextFormField(
                      controller: value.typeEducationcontroller,
                      style: TextStyle(color: Colors.white),
                      keyboardType: TextInputType.text,
                      inputFormatters: [],
                      decoration: InputDecoration(
                        hintText: "Enter education field",
                      ),
                      validator: (value) {
                        if (value!.isEmpty) {
                          return "This field is Required";
                        } else {

                        }
                      },
                      );
                  }
                ),

      Padding(
        padding: const EdgeInsets.only(right: 290),
        child: Text("Job ",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 20),),
      ),

    Consumer<MatrimonyProvider>(
      builder: (context,value,child) {
        return TextFormField(
            controller: value.typeWorkingascontroller,
        style: TextStyle(color: Colors.white),
        keyboardType: TextInputType.text,
        inputFormatters: [],
        decoration: InputDecoration(
        hintText: "Enter your proffession",
        ),
          validator: (value) {
            if (value!.isEmpty) {
              return "This field is Required";
            } else {

            }
          },
        );
      }
    ),
                Padding(
                  padding: const EdgeInsets.only(right: 275),
                  child: Text("Income ",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 20),),
                ),

                Consumer<MatrimonyProvider>(
                  builder: (context,value,child) {
                    return TextFormField(
                      controller: value.typeIncomecontroller,
                      style: TextStyle(color: Colors.white),
                      keyboardType: TextInputType.number,
                      inputFormatters: [],
                      decoration: InputDecoration(
                        hintText: "Enter your income",
                      ),
                      validator: (value) {
                        if (value!.isEmpty) {
                          return "This field is Required";
                        } else {

                        }
                      },
                    );
                  }
                ),

                Text("set your preference ",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 24 ),),
                Padding(
                  padding: const EdgeInsets.only(right: 330,top: 30),
                  child: Text("Age",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 20),),
                ),
                Consumer<MatrimonyProvider>(
                    builder: (context,value,child) {
                      return TextFormField(
                        controller: value.age_pcontroller,
                        style: TextStyle(color: Colors.white),
                        keyboardType: TextInputType.number,
                        inputFormatters: [LengthLimitingTextInputFormatter(3)],
                        decoration: InputDecoration(
                          hintText: "Enter your age",
                        ),
                        // validator: (value) {
                        //   if (value!.isEmpty) {
                        //     return "This field is Required";
                        //   } else {
                        //
                        //   }
                        // },
                        validator: (value) {
                          if (value!.isEmpty) {
                            return "This field is Required";
                          } else {

                          }
                        },
                      );
                    }
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 350),
                  child: Text("Height ",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 15),),
                ),
                Consumer<MatrimonyProvider>(
                    builder: (context,val2,child) {
                      return Row(
                        children: [
                          Radio(
                              activeColor: Colors.blueGrey,
                              value: "Tall ",
                              groupValue:val2.checkvalue5,
                              onChanged: (value){
                                val2.checkvalue5 = value.toString();
                                val2.notifyListeners();
                              }
                          ),


                          Text(
                            "Tall",
                            style:
                            TextStyle(fontWeight: FontWeight.w300, fontSize: 15, color: Colors.white,fontFamily: "ink nut"),
                          ),


                          Consumer<MatrimonyProvider>(
                              builder: (context,val2,child) {
                                return Row(
                                  children: [
                                    Radio(
                                        activeColor: Colors.blueGrey,
                                        value: "Average ",
                                        groupValue:val2.checkvalue5,
                                        onChanged: (value){
                                          val2.checkvalue5= value.toString();
                                          val2.notifyListeners();
                                        }
                                    ),
                                    Text(
                                      "Average",
                                      style:
                                      TextStyle(fontWeight: FontWeight.w300, fontSize: 15, color: Colors.white,fontFamily: "ink nut"),
                                    ),

                                    Consumer<MatrimonyProvider>(
                                        builder: (context,val2,child) {
                                          return Row(
                                            children: [
                                              Radio(
                                                  activeColor: Colors.grey,
                                                  value: "Short ",
                                                  groupValue:val2.checkvalue5,
                                                  onChanged: (value){
                                                    val2.checkvalue5 = value.toString();
                                                    val2.notifyListeners();
                                                  }
                                              ),
                                              Text(
                                                "Short",
                                                style:
                                                TextStyle(fontWeight: FontWeight.w300, fontSize: 15, color: Colors.white,fontFamily: "ink nut"),
                                              ),



                                            ],
                                          );
                                        }
                                    ),

                                  ],
                                );
                              }
                          ),


                        ],
                      );
                    }
                ),

                Padding(
                  padding: const EdgeInsets.only(right: 295),
                  child: Text("Education",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 20),),
                ),
                Consumer<MatrimonyProvider>(
                    builder: (context,value,child) {
                      return TextFormField(
                        controller: value.education_pcontroller,
                        style: TextStyle(color: Colors.white),
                        keyboardType: TextInputType.text,
                        inputFormatters: [],
                        decoration: InputDecoration(
                          hintText: "Enter your education",
                        ),
                        // validator: (value) {
                        //   if (value!.isEmpty) {
                        //     return "This field is Required";
                        //   } else {
                        //
                        //   }
                        // },
                        validator: (value) {
                          if (value!.isEmpty) {
                            return "This field is Required";
                          } else {

                          }
                        },
                      );
                    }
                ),

                Padding(
                  padding: const EdgeInsets.only(right: 290),
                  child: Text("Job ",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 20),),
                ),
                Consumer<MatrimonyProvider>(
                    builder: (context,value,child) {
                      return TextFormField(
                        controller: value.job_controller,
                        style: TextStyle(color: Colors.white),
                        keyboardType: TextInputType.text,
                        inputFormatters: [],
                        decoration: InputDecoration(
                          hintText: "Enter your job",
                        ),
                        // validator: (value) {
                        //   if (value!.isEmpty) {
                        //     return "This field is Required";
                        //   } else {
                        //
                        //   }
                        // },
                        validator: (value) {
                          if (value!.isEmpty) {
                            return "This field is Required";
                          } else {

                          }
                        },
                      );
                    }
                ),

                Padding(
                  padding: const EdgeInsets.only(right: 370),
                  child: Text("Caste",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 15),),
                ),
                Consumer<MatrimonyProvider>(
                    builder: (context,val2,child) {
                      return Row(
                        children: [
                          Radio(
                              activeColor: Colors.blueGrey,
                              value: "muslim ",
                              groupValue:val2.checkvalue6,
                              onChanged: (value){
                                val2.checkvalue6 = value.toString();
                                val2.notifyListeners();
                              }
                          ),


                          Text(
                            "muslim",
                            style:
                            TextStyle(fontWeight: FontWeight.w300, fontSize: 15, color: Colors.white,fontFamily: "ink nut"),
                          ),


                          Consumer<MatrimonyProvider>(
                              builder: (context,val2,child) {
                                return Row(
                                  children: [
                                    Radio(
                                        activeColor: Colors.blueGrey,
                                        value: "hindu ",
                                        groupValue:val2.checkvalue6,
                                        onChanged: (value){
                                          val2.checkvalue6= value.toString();
                                          val2.notifyListeners();
                                        }
                                    ),
                                    Text(
                                      "hindu",
                                      style:
                                      TextStyle(fontWeight: FontWeight.w300, fontSize: 15, color: Colors.white,fontFamily: "ink nut"),
                                    ),

                                    Consumer<MatrimonyProvider>(
                                        builder: (context,val2,child) {
                                          return Row(
                                            children: [
                                              Radio(
                                                  activeColor: Colors.grey,
                                                  value: "christian ",
                                                  groupValue:val2.checkvalue6,
                                                  onChanged: (value){
                                                    val2.checkvalue6 = value.toString();
                                                    val2.notifyListeners();
                                                  }
                                              ),
                                              Text(
                                                "christian",
                                                style:
                                                TextStyle(fontWeight: FontWeight.w300, fontSize: 15, color: Colors.white,fontFamily: "ink nut"),
                                              ),



                                            ],
                                          );
                                        }
                                    ),

                                  ],
                                );
                              }
                          ),


                        ],
                      );
                    }
                ),


                Padding(
                  padding: const EdgeInsets.only(top:20 ),
                  child: Consumer<MatrimonyProvider>(
                    builder: (context,value,child) {
                      return InkWell(onTap: () {
                        final FormState? form = formKey.currentState;
                        if(form!.validate()) {
                          value.addabout(userid);
                          value.getAbout();
                          value.clearfnabout();
                          Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => BottomNav(userid: userid)));

                        }




                      },


                          child: mybtn(height/18,width/3 , "Save",18,FontWeight.w600));
                    }
                  ),
                ),
    ]
            ),
          ),
        ),
      ),
    );
  }
}


void showBottomSheet(BuildContext context) {
  MatrimonyProvider provider =
  Provider.of<MatrimonyProvider>(context, listen: false);

  showModalBottomSheet(
      elevation: 10,
      backgroundColor: Colors.white,
      shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(10.0),
            topRight: Radius.circular(10.0),
          )),
      context: context,
      builder: (BuildContext bc) {
        return Wrap(
          children: <Widget>[
            ListTile(
                leading: Icon(
                  Icons.camera_enhance_sharp,
                  color: Colors.black,
                ),
                title: const Text(
                  'Camera',
                ),
                onTap: () =>
                {provider.getAboutImagecamera(), Navigator.pop(context)}),
            ListTile(
                leading: Icon(Icons.photo, color: Colors.white),
                title: const Text(
                  'Gallery',
                ),
                onTap: () =>
                {provider.getAboutgallery(), Navigator.pop(context)}),
          ],
        );

      });
  //ImageSource
}