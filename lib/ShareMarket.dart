import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'dart:async';
import 'dart:math';
import 'dart:developer' as dev;

class ShareMarket extends StatefulWidget {
  @override
  _ShareMarketState createState() => _ShareMarketState();
}

class _ShareMarketState extends State<ShareMarket> {
  double moneyInAccount = 300;
  double profit = 0.0;
  dynamic quantity = 1110;
  static double fixedValue = 28;
  static double currentValue = 28;
  double previousValue;
  double valueBought = currentValue;
  int sharePreviou = 0;
  int shareAtThis = 0;
  int yourShares = 0;
  TextEditingController quantityController = TextEditingController();
  Timer timer;
  bool isProfit, isEqual, isBought;
  var rng = new Random();

  void changeValue() {
    setState(() {
      previousValue = currentValue;
      currentValue = fixedValue * 0.85 +
          rng.nextDouble() * (fixedValue * 0.3) -
          previousValue * 0.121;
      if (currentValue == previousValue) {
        isEqual = true;
      } else if (currentValue < previousValue) {
        isProfit = false;
      } else {
        isProfit = true;
      }
      if (isBought == true) {
        profit += shareAtThis * (currentValue - valueBought);
        isBought = false;
      } else
        profit = shareAtThis * (currentValue - valueBought);
    });
  }

  @override
  void initState() {
    super.initState();
    timer = Timer.periodic(Duration(seconds: 3), (Timer t) => changeValue());
  }

  Color backgroundCardColor = Color(0xff0AB286);
  Color upArrow = Color(0xffBD5EC3);
  Color downArrow = Color(0xff292C45);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff191d38),
      body: Column(
        children: [
          Center(
            child: FlatButton(
              onPressed: (){},
              color: Color(0xff292C45),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(
                  Radius.circular(42),
                ),
              ),
              child: Text(
                "Share Market",
                style:
                    GoogleFonts.roboto(fontSize: 64, color: Color(0xffFFFFFF)),
              ),
            ),
          ),
          SizedBox(height: 20,),
          Container(
            width: 928,
            alignment: Alignment.center,
            child: Column(
              children: [
                Row(
                  children: [
                    Container(
                      height: 314,
                      width: 419,
                      child: Card(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(29)),
                        elevation: 5,
                        color: backgroundCardColor,
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(12.0),
                                  child: Text(
                                    "Agro Pro",
                                    style: GoogleFonts.roboto(fontSize: 20,color:Colors.white),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text.rich(
                                    TextSpan(
                                      text: 'Total Profit: ',
                                      style: GoogleFonts.roboto(fontSize: 20,color:Colors.white),
                                      children: <InlineSpan>[
                                        TextSpan(
                                          text: profit.toStringAsFixed(2),
                                          style: GoogleFonts.roboto(
                                              
                                              fontSize: 20),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Container(
                              height: 125,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Column(
                                    // mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Container(
                                        height: 10,
                                        // color:Colors.white,
                                        child: Icon(
                                          // Icons.arrow_drop_up,
                                          Icons.keyboard_arrow_up,
                                          size: 80,
                                          color: (isProfit == false)
                                              ? Colors.white60
                                              : upArrow,
                                        ),
                                      ),
                                      SizedBox(
                                        height: 20,
                                      ),
                                      Container(
                                        height: 30,
                                        // color:Colors.white,
                                        child: Icon(
                                          Icons.keyboard_arrow_down,
                                          size: 80,
                                          color: (isProfit == false)
                                              ? downArrow
                                              : Colors.white60,
                                        ),
                                      ),
                                    ],
                                  ),
                                  Container(
                                    child: Text(
                                      currentValue.toStringAsFixed(2),
                                      style: GoogleFonts.roboto(fontSize: 80,color: Colors.white),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                SizedBox(
                                  width: 20,
                                ),
                                (yourShares > 0)
                                    ? Expanded(
                                        child: Container(
                                            alignment: Alignment.centerRight,
                                            child:
                                                Text("$yourShares share(s)",style:GoogleFonts.roboto(fontSize: 12,color: Colors.white,),),),)
                                    : Text(""),
                              ],
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Center(
                                child: Container(
                              padding: EdgeInsets.only(top: 25, bottom: 20),
                              width: 390,
                              height: 1.5,
                              color: Colors.white,
                            )),
                            Container(
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Expanded(
                                    child: RaisedButton(
                                      color: Colors.transparent,
                                      child: Container(
                                        alignment: Alignment.center,
                                        height: 90,
                                        child: Text(
                                          "BUY",
                                          style:
                                              GoogleFonts.roboto(fontSize: 30,color:Colors.white),
                                        ),
                                      ),
                                      onPressed: () {
                                        setState(() {
                                          sharePreviou = yourShares;
                                          yourShares++;
                                          shareAtThis =
                                              yourShares - sharePreviou;
                                          valueBought = currentValue;
                                          isBought = true;
                                          if (moneyInAccount >= currentValue) {
                                            moneyInAccount -= currentValue;
                                          }
                                        });
                                        // dev.log(valueBought.toString());
                                        // dev.log(currentValue.toString());
                                      },
                                    ),
                                  ),
                                  Expanded(
                                    child: RaisedButton(
                                      color: Colors.transparent,
                                      child: Container(
                                        height: 90,
                                        alignment: Alignment.center,
                                        child: Text(
                                          "SELL",
                                          style:
                                              GoogleFonts.roboto(fontSize: 30,color:Colors.white),
                                        ),
                                      ),
                                      onPressed: () {
                                        setState(() {
                                          if (yourShares > 0) {
                                            yourShares--;
                                            moneyInAccount += currentValue;
                                          } else if (yourShares == 1) {
                                            setState(() {
                                              profit = 0;
                                              valueBought = currentValue;
                                            });
                                          }
                                        });
                                      },
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 30,
                    ),
                    Container(
                      height: 314,
                      width: 419,
                      child: Card(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(29)),
                        elevation: 5,
                        color: backgroundCardColor,
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(12.0),
                                  child: Text(
                                    "Agro Pro",
                                    style: GoogleFonts.roboto(fontSize: 20,color:Colors.white),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text.rich(
                                    TextSpan(
                                      text: 'Total Profit: ',
                                      style: GoogleFonts.roboto(fontSize: 20,color:Colors.white),
                                      children: <InlineSpan>[
                                        TextSpan(
                                          text: profit.toStringAsFixed(2),
                                          style: GoogleFonts.roboto(
                                              
                                              fontSize: 20),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Container(
                              height: 125,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Column(
                                    // mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Container(
                                        height: 10,
                                        // color:Colors.white,
                                        child: Icon(
                                          // Icons.arrow_drop_up,
                                          Icons.keyboard_arrow_up,
                                          size: 80,
                                          color: (isProfit == false)
                                              ? Colors.white60
                                              : upArrow,
                                        ),
                                      ),
                                      SizedBox(
                                        height: 20,
                                      ),
                                      Container(
                                        height: 30,
                                        // color:Colors.white,
                                        child: Icon(
                                          Icons.keyboard_arrow_down,
                                          size: 80,
                                          color: (isProfit == false)
                                              ? downArrow
                                              : Colors.white60,
                                        ),
                                      ),
                                    ],
                                  ),
                                  Container(
                                    child: Text(
                                      currentValue.toStringAsFixed(2),
                                      style: GoogleFonts.roboto(fontSize: 80,color:Colors.white),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                SizedBox(
                                  width: 20,
                                ),
                                (yourShares > 0)
                                    ? Expanded(
                                        child: Container(
                                            alignment: Alignment.centerRight,
                                            child:
                                                Text("$yourShares share(s)",style:GoogleFonts.roboto(fontSize: 12,color: Colors.white))))
                                    : Text(""),
                              ],
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Center(
                                child: Container(
                              padding: EdgeInsets.only(top: 25, bottom: 20),
                              width: 390,
                              height: 1.5,
                              color: Colors.white,
                            )),
                            Container(
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Expanded(
                                    child: RaisedButton(
                                      color: Colors.transparent,
                                      child: Container(
                                        alignment: Alignment.center,
                                        height: 90,
                                        child: Text(
                                          "BUY",
                                          style:
                                              GoogleFonts.roboto(fontSize: 30,color:Colors.white),
                                        ),
                                      ),
                                      onPressed: () {
                                        setState(() {
                                          sharePreviou = yourShares;
                                          yourShares++;
                                          shareAtThis =
                                              yourShares - sharePreviou;
                                          valueBought = currentValue;
                                          isBought = true;
                                          if (moneyInAccount >= currentValue) {
                                            moneyInAccount -= currentValue;
                                          }
                                        });
                                        // dev.log(valueBought.toString());
                                        // dev.log(currentValue.toString());
                                      },
                                    ),
                                  ),
                                  Expanded(
                                    child: RaisedButton(
                                      color: Colors.transparent,
                                      child: Container(
                                        height: 90,
                                        alignment: Alignment.center,
                                        child: Text(
                                          "SELL",
                                          style:
                                              GoogleFonts.roboto(fontSize: 30,color:Colors.white),
                                        ),
                                      ),
                                      onPressed: () {
                                        setState(() {
                                          if (yourShares > 0) {
                                            yourShares--;
                                            moneyInAccount += currentValue;
                                          } else if (yourShares == 1) {
                                            setState(() {
                                              profit = 0;
                                              valueBought = currentValue;
                                            });
                                          }
                                        });
                                      },
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 30,
                ),
                Row(
                  children: [
                    Container(
                      height: 314,
                      width: 419,
                      child: Card(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(29)),
                        elevation: 5,
                        color: backgroundCardColor,
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(12.0),
                                  child: Text(
                                    "Agro Pro",
                                    style: GoogleFonts.roboto(fontSize: 20,color:Colors.white),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text.rich(
                                    TextSpan(
                                      text: 'Total Profit: ',
                                      style: GoogleFonts.roboto(fontSize: 20,color:Colors.white),
                                      children: <InlineSpan>[
                                        TextSpan(
                                          text: profit.toStringAsFixed(2),
                                          style: GoogleFonts.roboto(
                                              
                                              fontSize: 20),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Container(
                              height: 125,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Column(
                                    // mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Container(
                                        height: 10,
                                        // color:Colors.white,
                                        child: Icon(
                                          // Icons.arrow_drop_up,
                                          Icons.keyboard_arrow_up,
                                          size: 80,
                                          color: (isProfit == false)
                                              ? Colors.white60
                                              : upArrow,
                                        ),
                                      ),
                                      SizedBox(
                                        height: 20,
                                      ),
                                      Container(
                                        height: 30,
                                        // color:Colors.white,
                                        child: Icon(
                                          Icons.keyboard_arrow_down,
                                          size: 80,
                                          color: (isProfit == false)
                                              ? downArrow
                                              : Colors.white60,
                                        ),
                                      ),
                                    ],
                                  ),
                                  Container(
                                    child: Text(
                                      currentValue.toStringAsFixed(2),
                                      style:GoogleFonts.roboto(fontSize: 80,color:Colors.white),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                SizedBox(
                                  width: 20,
                                ),
                                (yourShares > 0)
                                    ? Expanded(
                                        child: Container(
                                            alignment: Alignment.centerRight,
                                            child:
                                                Text("$yourShares share(s)",style:GoogleFonts.roboto(fontSize: 12,color: Colors.white))))
                                    : Text(""),
                              ],
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Center(
                                child: Container(
                              padding: EdgeInsets.only(top: 25, bottom: 20),
                              width: 390,
                              height: 1.5,
                              color: Colors.white,
                            )),
                            Container(
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Expanded(
                                    child: RaisedButton(
                                      color: Colors.transparent,
                                      child: Container(
                                        alignment: Alignment.center,
                                        height: 90,
                                        child: Text(
                                          "BUY",
                                          style:
                                              GoogleFonts.roboto(fontSize: 30,color:Colors.white),
                                        ),
                                      ),
                                      onPressed: () {
                                        setState(() {
                                          sharePreviou = yourShares;
                                          yourShares++;
                                          shareAtThis =
                                              yourShares - sharePreviou;
                                          valueBought = currentValue;
                                          isBought = true;
                                          if (moneyInAccount >= currentValue) {
                                            moneyInAccount -= currentValue;
                                          }
                                        });
                                        // dev.log(valueBought.toString());
                                        // dev.log(currentValue.toString());
                                      },
                                    ),
                                  ),
                                  Expanded(
                                    child: RaisedButton(
                                      color: Colors.transparent,
                                      child: Container(
                                        height: 90,
                                        alignment: Alignment.center,
                                        child: Text(
                                          "SELL",
                                          style:
                                              GoogleFonts.roboto(fontSize: 30,color:Colors.white),
                                        ),
                                      ),
                                      onPressed: () {
                                        setState(() {
                                          if (yourShares > 0) {
                                            yourShares--;
                                            moneyInAccount += currentValue;
                                          } else if (yourShares == 1) {
                                            setState(() {
                                              profit = 0;
                                              valueBought = currentValue;
                                            });
                                          }
                                        });
                                      },
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 30,
                    ),
                    Container(
                      height: 314,
                      width: 419,
                      child: Card(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(29)),
                        elevation: 5,
                        color: backgroundCardColor,
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(12.0),
                                  child: Text(
                                    "Agro Pro",
                                    style: GoogleFonts.roboto(fontSize: 20,color:Colors.white),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text.rich(
                                    TextSpan(
                                      text: 'Total Profit: ',
                                      style: GoogleFonts.roboto(fontSize: 20,color:Colors.white),
                                      children: <InlineSpan>[
                                        TextSpan(
                                          text: profit.toStringAsFixed(2),
                                          style: GoogleFonts.roboto(
                                              
                                              fontSize: 20),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Container(
                              height: 125,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Column(
                                    // mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Container(
                                        height: 10,
                                        // color:Colors.white,
                                        child: Icon(
                                          // Icons.arrow_drop_up,
                                          Icons.keyboard_arrow_up,
                                          size: 80,
                                          color: (isProfit == false)
                                              ? Colors.white60
                                              : upArrow,
                                        ),
                                      ),
                                      SizedBox(
                                        height: 20,
                                      ),
                                      Container(
                                        height: 30,
                                        // color:Colors.white,
                                        child: Icon(
                                          Icons.keyboard_arrow_down,
                                          size: 80,
                                          color: (isProfit == false)
                                              ? downArrow
                                              : Colors.white60,
                                        ),
                                      ),
                                    ],
                                  ),
                                  Container(
                                    child: Text(
                                      currentValue.toStringAsFixed(2),
                                      style:GoogleFonts.roboto(fontSize: 80,color:Colors.white),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                SizedBox(
                                  width: 20,
                                ),
                                (yourShares > 0)
                                    ? Expanded(
                                        child: Container(
                                            alignment: Alignment.centerRight,
                                            child:
                                                Text("$yourShares share(s)",style:GoogleFonts.roboto(fontSize: 12,color: Colors.white))))
                                    : Text(""),
                              ],
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Center(
                                child: Container(
                              padding: EdgeInsets.only(top: 25, bottom: 20),
                              width: 390,
                              height: 1.5,
                              color: Colors.white,
                            )),
                            Container(
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Expanded(
                                    child: RaisedButton(
                                      color: Colors.transparent,
                                      child: Container(
                                        alignment: Alignment.center,
                                        height: 90,
                                        child: Text(
                                          "BUY",
                                          style:
                                              GoogleFonts.roboto(fontSize: 30,color:Colors.white),
                                        ),
                                      ),
                                      onPressed: () {
                                        setState(() {
                                          sharePreviou = yourShares;
                                          yourShares++;
                                          shareAtThis =
                                              yourShares - sharePreviou;
                                          valueBought = currentValue;
                                          isBought = true;
                                          if (moneyInAccount >= currentValue) {
                                            moneyInAccount -= currentValue;
                                          }
                                        });
                                        // dev.log(valueBought.toString());
                                        // dev.log(currentValue.toString());
                                      },
                                    ),
                                  ),
                                  Expanded(
                                    child: RaisedButton(
                                      color: Colors.transparent,
                                      child: Container(
                                        height: 90,
                                        alignment: Alignment.center,
                                        child: Text(
                                          "SELL",
                                          style:
                                              GoogleFonts.roboto(fontSize: 30,color:Colors.white),
                                        ),
                                      ),
                                      onPressed: () {
                                        setState(() {
                                          if (yourShares > 0) {
                                            yourShares--;
                                            moneyInAccount += currentValue;
                                          } else if (yourShares == 1) {
                                            setState(() {
                                              profit = 0;
                                              valueBought = currentValue;
                                            });
                                          }
                                        });
                                      },
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
