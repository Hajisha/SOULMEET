import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:matrimony/provider/Matrimonyprovider.dart';
import 'package:matrimony/provider/loginprovider.dart';
import 'package:matrimony/user/BOOKMARKED.dart';
import 'package:matrimony/user/about.dart';
import 'package:matrimony/user/full%20profile.dart';
import 'package:matrimony/user/getstart.dart';

import 'package:matrimony/user/login.dart';
import 'package:matrimony/user/new%20login.dart';

import 'package:matrimony/user/profile1.dart';
import 'package:matrimony/user/splashscreen.dart';
import 'package:provider/provider.dart';

import 'admin/account2.dart';
import 'admin/addingpage.dart';
import 'admin/editpge.dart';
import 'admin/homepage2.dart';
import 'listview.dart';




Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp( MyApp());
}

class MyApp extends StatelessWidget {

   MyApp({super.key,});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(providers: [
      ChangeNotifierProvider(create: (context) => MatrimonyProvider(),),
      ChangeNotifierProvider(create: (context) => LoginProvider(),)
    ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home:Splash()
      ),
    );
  }
}



