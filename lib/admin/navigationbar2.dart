import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:matrimony/admin/homepage2.dart';
import 'package:provider/provider.dart';

import '../provider/Matrimonyprovider.dart';
import 'account2.dart';

class BottomNav2 extends StatelessWidget {
  const BottomNav2({super.key});

  @override
  Widget build(BuildContext context) {
    MatrimonyProvider provider = Provider.of<MatrimonyProvider>(context, listen: true);
    final pages= [Homepage2()];

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
                  provider.onItemTapped(2);

                },
                icon:provider.selectedIndex==2?Icon(Icons.person,color: Colors.red.shade900,):Icon(Icons.person)),

          ],
        ),
      ),
    );
  }
}
