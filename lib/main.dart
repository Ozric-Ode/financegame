import 'package:flutter/material.dart';
import 'BankAccountPage.dart';
import 'LoanFormalPage.dart';
import './GoalsPage.dart';
import './ShareMarket.dart';
import './RightChoice.dart';
import './WrongChoice.dart';
import './LandingPage.dart';
import './infopage.dart';
import './informalLoan.dart';

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
