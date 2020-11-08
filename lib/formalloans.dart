import 'package:flutter/material.dart';

class FormalLoan extends StatefulWidget {
  @override
  _FormalLoanState createState() => _FormalLoanState();
}

class _FormalLoanState extends State<FormalLoan> {
  final myController = TextEditingController();

  final myController2 = TextEditingController();

  final myController3 = TextEditingController();

  @override
  Widget build(BuildContext context) {
    double amount = 0.0;
    int years = 0;
    double interestRate = 11;
    double amountPayble = 0.0;
    void update() {
      setState(() {
        amount = double.parse(myController.text);
        years = int.parse(myController2.text);
        amountPayble = amount + (amount * years * interestRate) / 100;
        print(amountPayble);
      });
    }

    return DefaultTabController(
      length: 4,
      child: Scaffold(
          appBar: AppBar(
            title: Text("TERA MERA BANK"),
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
                  child: Center(
                child: Text("Home Loan Info"),
              )),
              Container(
                  child: Center(
                child: Text("SME Loan Info"),
              )),
              Container(
                  child: Center(
                child: Text("Education Loan Info"),
              )),
              Container(
                  child: Center(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    Center(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text("Amount : -"),
                          Container(
                            width: 200,
                            child: TextField(
                              controller: myController,
                              decoration: InputDecoration(
                                border: OutlineInputBorder(),
                                labelText: 'Enter Amount',
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Center(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text("Duration -"),
                          Container(
                            width: 200,
                            child: TextField(
                              controller: myController2,
                              decoration: InputDecoration(
                                border: OutlineInputBorder(),
                                labelText: 'Enter Duration',
                              ),
                              onSubmitted: (value) {
                                print(amountPayble);
                                update();
                                print(amountPayble);
                              },
                            ),
                          ),
                        ],
                      ),
                    ),
                    Center(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text("Interest ${interestRate} %"),
                        ],
                      ),
                    ),
                    //Text("Total amount to be paid ${amountPayble}"),
                    Center(
                      child: RaisedButton(
                        elevation: 30,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(50),
                        ),
                        padding: const EdgeInsets.symmetric(
                            horizontal: 125.0, vertical: 30),
                        color: Colors.black12,
                        onPressed: () {
                          update();
                          return showDialog(
                            context: context,
                            builder: (context) {
                              return AlertDialog(
                                content: Text(
                                    "${amount} credited to your bank account. Total amount to be paid ${amountPayble}"),
                              );
                            },
                          );
                        },
                        child: Text("Submit"),
                      ),
                    ),
                  ],
                ),
              )),
            ],
          )),
    );
  }
}
