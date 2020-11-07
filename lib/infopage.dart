import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class InfoPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double cwidth = MediaQuery.of(context).size.width;
    double cheight = MediaQuery.of(context).size.height;
    String nameEntered = "Monik";
    return Scaffold(
      body: Container(
          margin: EdgeInsets.all(40.0),
          child: Container(
              width: cwidth,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Welcome ",
                    style: GoogleFonts.montserrat(
                      color: Color(0xff602080),
                      fontSize: 28,
                    ),
                  ),
                  SizedBox(
                    height: cheight * (66 / 1045),
                  ),
                  Container(
                    height: cheight * (540 / 1045),
                    width: cwidth * (1140 / 1440),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                      color: Colors.black38,
                    ),
                    child: Container(
                      padding: EdgeInsets.all(10.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: <Widget>[
                          Flexible(
                            child: Text(
                              "Welcome ${nameEntered} to financegame here you will be taught how to manage your personal finance and investments. ",
                              style: GoogleFonts.openSans(
                                textStyle:
                                    Theme.of(context).textTheme.headline4,
                                color: Color(0xFFF2F2F2),
                                fontSize: 32,
                                fontWeight: FontWeight.w300,
                                //letterSpacing: -5,
                              ),
                            ),
                          ),
                          // SizedBox(
                          //   height: cheight * (40 / 1045),
                          // ),
                          Text(
                            "Lets begin our finantic journey.",
                            style: GoogleFonts.openSans(
                              textStyle: Theme.of(context).textTheme.headline4,
                              color: Color(0xFFF2F2F2),
                              fontSize: 28,
                              fontWeight: FontWeight.w500,
                              //letterSpacing: -5,
                            ),
                          ),
                          Flexible(
                            child: Text(
                              "Hey ${nameEntered}, you have just passed out with a degree of computer science and engineering, and you have a job of Rs. 30000",
                              style: GoogleFonts.openSans(
                                textStyle:
                                    Theme.of(context).textTheme.headline4,
                                color: Color(0xFFF2F2F2),
                                fontSize: 32,
                                fontWeight: FontWeight.w300,
                                //letterSpacing: -5,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: cheight * (66 / 1045),
                  ),
                  Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: <Widget>[
                        Container(
                          height: cheight * (141 / 1045),
                          width: cwidth * (208 / 1440),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(20)),
                            color: Colors.black38,
                          ),
                          child: Container(
                            padding: EdgeInsets.all(10.0),
                            child: Center(
                              child: Text(
                                "Banking",
                                style: GoogleFonts.openSans(
                                  textStyle:
                                      Theme.of(context).textTheme.headline4,
                                  color: Color(0xFFF2F2F2),
                                  fontSize: 32,
                                  fontWeight: FontWeight.w300,
                                  //letterSpacing: -5,
                                ),
                              ),
                            ),
                          ),
                        ),
                        Container(
                          height: cheight * (141 / 1045),
                          width: cwidth * (208 / 1440),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(20)),
                            color: Colors.black38,
                          ),
                          child: Container(
                            padding: EdgeInsets.all(10.0),
                            child: Center(
                              child: Text(
                                "Insurance",
                                style: GoogleFonts.openSans(
                                  textStyle:
                                      Theme.of(context).textTheme.headline4,
                                  color: Color(0xFFF2F2F2),
                                  fontSize: 32,
                                  fontWeight: FontWeight.w300,
                                  //letterSpacing: -5,
                                ),
                              ),
                            ),
                          ),
                        ),
                        Container(
                          height: cheight * (141 / 1045),
                          width: cwidth * (208 / 1440),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(20)),
                            color: Colors.black38,
                          ),
                          child: Container(
                            padding: EdgeInsets.all(10.0),
                            child: Center(
                              child: Text(
                                "Loans",
                                style: GoogleFonts.openSans(
                                  textStyle:
                                      Theme.of(context).textTheme.headline4,
                                  color: Color(0xFFF2F2F2),
                                  fontSize: 32,
                                  fontWeight: FontWeight.w300,
                                  //letterSpacing: -5,
                                ),
                              ),
                            ),
                          ),
                        ),
                        Container(
                          height: cheight * (141 / 1045),
                          width: cwidth * (208 / 1440),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(20)),
                            color: Colors.black38,
                          ),
                          child: Container(
                            padding: EdgeInsets.all(10.0),
                            child: Center(
                              child: Text(
                                "Taxes",
                                style: GoogleFonts.openSans(
                                  textStyle:
                                      Theme.of(context).textTheme.headline4,
                                  color: Color(0xFFF2F2F2),
                                  fontSize: 32,
                                  fontWeight: FontWeight.w300,
                                  //letterSpacing: -5,
                                ),
                              ),
                            ),
                          ),
                        ),
                        Container(
                          height: cheight * (141 / 1045),
                          width: cwidth * (208 / 1440),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(20)),
                            color: Colors.black38,
                          ),
                          child: Container(
                            padding: EdgeInsets.all(10.0),
                            child: Center(
                              child: Text(
                                "Insurance",
                                style: GoogleFonts.openSans(
                                  textStyle:
                                      Theme.of(context).textTheme.headline4,
                                  color: Color(0xFFF2F2F2),
                                  fontSize: 32,
                                  fontWeight: FontWeight.w300,
                                  //letterSpacing: -5,
                                ),
                              ),
                            ),
                          ),
                        ),
                        
                      ],
                    ),
                  ),
                ],
              ))),
    );
  }
}
