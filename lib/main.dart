import 'package:flutter/material.dart';
import './LandingPage.dart';

import 'infopage.dart';

import './GoalsPage.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // routes: {},
      debugShowCheckedModeBanner: false,
      title: "Finance Game",

      home: GoalsPage(),
    );
  }
}
