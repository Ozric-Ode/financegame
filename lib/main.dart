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
       home :LoanFormal(),
      //change the name of home according to your file class name
      // Example: if your class name is LandingPage, then write
      //home: LandingPage(),

      // home: HomeScreen(),
    );
  }
}
