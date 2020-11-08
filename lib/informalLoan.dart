import 'package:flutter/material.dart';
// import 'loanCalculation.dart';

class InformalLoan extends StatefulWidget {
  @override
  _InformalLoanState createState() => _InformalLoanState();
}

class _InformalLoanState extends State<InformalLoan> {
  final myController = TextEditingController();
  final myController2 = TextEditingController();
  final myController3 = TextEditingController();

  @override
  void dispose() {
    myController.dispose();

    super.dispose();
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Dhanna Seth & Family")),
      body: Container(
        child: Center(
          child: Column(
            children: <Widget>[
              Row(
                children: <Widget>[
                  Text("Amount : -"),
                  // TextField(
                  //   controller: myController,
                  //   decoration: InputDecoration(
                  //     border: OutlineInputBorder(),
                  //     labelText: 'Enter Amount',
                  //   ),
                ],
              ),
              Row(
                children: <Widget>[
                  Text("Interest "),
                  TextField(
                    onChanged:(String str) {
                      print(str);
                    },
             
                  ),
                  Text(" Years"),
                ],
              ),
              Row(
                children: <Widget>[
                  Text("Duration -"),
                  // TextField(
                  //   controller: myController3,
                  //   decoration: InputDecoration(
                  //     border: OutlineInputBorder(),
                  //     labelText: 'Enter interest',
                  //   ),
                  // ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
