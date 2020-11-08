import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyCustomForm extends StatefulWidget {
  @override
  LandingPage createState() => LandingPage();
}

class LandingPage extends State<MyCustomForm> {
  final myController = TextEditingController();
  @override
  void dispose() {
    myController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0XFF191D38),
      body: Column(
        children: <Widget>[
          SizedBox(
            height: 20,
          ),
          // color :Colors.black38,
          Center(
            child: Card(
              elevation: 20,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(50),
              ),
              color: Color(0XFFBD5EC3),
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 200.0, vertical: 30),
                child: Text(
                  "Finance Game",
                  style: GoogleFonts.openSans(
                    textStyle: Theme.of(context).textTheme.headline4,
                    color: Color(0xFFFffffff),
                    fontSize: 32,
                    fontWeight: FontWeight.w300,
                    //letterSpacing: -5,
                  ),
                ),
                //////////////////
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),

          Center(
            child: Card(
              elevation: 20,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(50),
              ),
              color: Color(0XFF292E49),
              child: Padding(
                padding: const EdgeInsets.all(40.0),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Card(
                      color: Color(0XFFA59F9F),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(50),
                      ),
                      child: Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 150.0, vertical: 30),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              TextField(
                                controller: myController,
                                decoration: InputDecoration(
                                  border: OutlineInputBorder(),
                                  labelText: 'Enter your Name',
                                ),
                              ),
                            ],
                          )),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Center(
                      child: RaisedButton(
                        elevation: 30,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(50),
                        ),
                        padding: const EdgeInsets.symmetric(
                            horizontal: 125.0, vertical: 30),
                        color: Color(0XFF0AB286),
                        onPressed: () {
                          return showDialog(
                            context: context,
                            builder: (context) {
                              return AlertDialog(
                                content: Text("Welcome to our Finance Game, " +
                                    myController.text),
                              );
                            },
                          );
                        },
                        child: Text("Submit"),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],

        // SafeArea(

        //   ),
      ),
    );
  }
}
