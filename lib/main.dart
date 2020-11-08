import 'package:flutter/material.dart';
import 'BankAccountPage.dart';
import 'LoanFormalPage.dart';
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
<<<<<<< HEAD
       home :LoanFormal(),
      //change the name of home according to your file class name
      // Example: if your class name is LandingPage, then write
      //home: LandingPage(),

      // home: HomeScreen(),
=======

      home: GoalsPage(),
>>>>>>> 6b4e201b8791e39b20167f615c6c623f8e700529
    );
  }
}
