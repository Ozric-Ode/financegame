
import 'package:financegame/infopage.dart';
import 'package:financegame/insurance.dart';
import 'package:financegame/taxes.dart';

import 'package:flutter/material.dart';
import 'BankAccountPage.dart';
import 'LoanFormalPage.dart';
import './GoalsPage.dart';
import './ShareMarket.dart';
import './RightChoice.dart';
import './WrongChoice.dart';
import './LandingPage.dart';

import 'formalloans.dart';
import 'informalLoan.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        InfoPage.routeName: (context) => InfoPage(),
        BankAccount.routeName: (context) => BankAccount(),
        InformalLoan.routeName: (context) => InformalLoan(),
        FormalLoan.routeName: (context) => FormalLoan(),
        ShareMarket.routeName: (context) => ShareMarket(),
        GoalsPage.routeName: (context) => GoalsPage(),
        RightChoice.routeName: (context) => RightChoice(),
        WrongChoice.routeName: (context) => WrongChoice(),
        TaxPage.routeName: (context) => TaxPage(),
        InsurancePage.routeName: (context) => InsurancePage(),
        LoanFormal.routeName: (context) => LoanFormal(),
      },
      debugShowCheckedModeBanner: false,
      title: "Finance Game",

      home: MyCustomForm(),
    );
  }
}
