import 'package:flutter/material.dart';
import './LandingPage.dart';

import 'infopage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {},
      debugShowCheckedModeBanner: false,
      title: "Finance Game",

      //change the name of home according to your file class name
      // Example: if your class name is LandingPage, then write


      home: MyCustomForm(),


      // home: HomeScreen(),
    );
  }
}
