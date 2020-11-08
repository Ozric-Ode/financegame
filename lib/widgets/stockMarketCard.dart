import 'package:flutter/material.dart';

Widget stockMarketCard{
  return Container(
                    height: 314,
                    width: 419,
                    child: Card(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(29)),
                      elevation: 5,
                      color: Color(0xffC4C4C4),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(12.0),
                                child: Text(
                                  "Agro Pro",
                                  style: GoogleFonts.roboto(fontSize: 20),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text.rich(
                                  TextSpan(
                                    text: 'Total Profit: ',
                                    style: GoogleFonts.roboto(fontSize: 20),
                                    children: <InlineSpan>[
                                      TextSpan(
                                        text: profit.toStringAsFixed(2),
                                        style: GoogleFonts.roboto(
                                            backgroundColor: Colors.white,
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
                                            ? Colors.grey[700]
                                            : Colors.green[800],
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
                                            ? Colors.red[900]
                                            : Colors.grey[700],
                                      ),
                                    ),
                                  ],
                                ),
                                Container(
                                  child: Text(
                                    currentValue.toStringAsFixed(2),
                                    style: GoogleFonts.roboto(fontSize: 80),
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
                              Text(
                                "Quantity:-",
                                style: GoogleFonts.roboto(fontSize: 22),
                              ),
                              SizedBox(width: 30),
                              Container(
                                width: 70,
                                height: 40,
                                child: TextField(
                                  controller: quantityController,
                                  decoration: InputDecoration(
                                    labelText: "Qty.",
                                    border: OutlineInputBorder(),
                                  ),
                                  inputFormatters: <TextInputFormatter>[
                                    FilteringTextInputFormatter.digitsOnly
                                  ],
                                  onChanged: (text) {
                                    setState(() {
                                      quantity = quantityController.text;
                                      print(quantity);
                                    });
                                  },
                                ),
                              ),
                              (yourShares > 0)
                                  ? Expanded(
                                      child: Container(
                                          alignment: Alignment.centerRight,
                                          child: Text("$yourShares share(s)")))
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
                            height: 1,
                            color: Colors.black,
                          )),
                          Container(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Expanded(
                                  child: RaisedButton(
                                    color: Colors.transparent,
                                    child: Container(
                                      alignment: Alignment.center,
                                      height: 90,
                                      child: Text(
                                        "BUY",
                                        style: GoogleFonts.roboto(fontSize: 30),
                                      ),
                                    ),
                                    onPressed: () {
                                      setState(() {
                                        sharePreviou = yourShares;
                                        yourShares++;
                                        shareAtThis = yourShares - sharePreviou;
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
                                        style: GoogleFonts.roboto(fontSize: 30),
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
                  
            );
}