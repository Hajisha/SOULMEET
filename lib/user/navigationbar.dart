import 'package:flutter/material.dart';
import 'package:matrimony/user/BOOKMARKED.dart';
import 'package:matrimony/user/profile1.dart';
import 'package:matrimony/user/profilepicture.dart';
import 'package:matrimony/user/request.dart';
import 'package:provider/provider.dart';

import '../provider/Matrimonyprovider.dart';
import 'home page.dart';

class BottomNav extends StatelessWidget {
  String userid;

  BottomNav({Key? key,required this.userid}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    MatrimonyProvider provider = Provider.of<MatrimonyProvider>(context, listen: true);

    final pages = [Homepage(), Request(), Saved(),  Account(userid: userid,)];

    return Scaffold(
      bottomNavigationBar: Container(
        height: 50,
        decoration: BoxDecoration(
          border: Border.all(color: Colors.black12, width: 2),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            IconButton(
              // enableFeedback: false,
                onPressed: () {
                  provider.onItemTapped(0);
                },
                icon:provider.selectedIndex==0?Icon(Icons.home,color: Colors.red.shade900,):Icon(Icons.home)),
            IconButton(
              // enableFeedback: false,
                onPressed: () {
                  provider.onItemTapped(1);
                },
                icon:provider.selectedIndex==1?Icon(Icons.notification_add,color: Colors.red.shade900):Icon(Icons.notification_add)),
            IconButton(
              // enableFeedback: false,
                onPressed: () {
                  provider.onItemTapped(2);

                },
                icon:provider.selectedIndex==2?Icon(Icons.favorite,color: Colors.red.shade900,):Icon(Icons.favorite)),
            Consumer<MatrimonyProvider>(
              builder: (context,value,child) {
                return IconButton(
                    onPressed: () {
                      // value.getData();
                      provider.getUser(userid);
                      provider.onItemTapped(3);
                    },
                    icon:provider.selectedIndex==3?Icon(Icons.person,color: Colors.red.shade900,):Icon(Icons.person));
              }
            ),
          ],
        ),
      ),
      body: pages[provider.selectedIndex],
    );
  }
}