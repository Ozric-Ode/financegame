import 'package:flutter/material.dart';

class FormalLoan extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
          appBar: AppBar(
            title: Text("data"),
            bottom: TabBar(
              tabs: [
                Tab(
                  text: "Home Loan",
                ),
                Tab(
                  text: "SME Loan",
                ),
                Tab(
                  text: "Education Loan",
                ),
                Tab(
                  text: "Personal Loan",
                ),
              ],
            ),
          ),
          body: TabBarView(
            children: [
              Container(
                child: Center(child: Text("Home Loan Info"),)
              ),
               Container(
                child: Center(child: Text("SME Loan Info"),)
              ),
               Container(
                child: Center(child: Text("Education Loan Info"),)
              ),
               Container(
                child: Center(child: Text("Personal Loan Info"),)
              ),
            ],
          )),
    );
  }
}
