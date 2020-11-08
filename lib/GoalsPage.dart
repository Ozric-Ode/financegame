import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';
import 'package:percent_indicator/percent_indicator.dart';

class GoalsPage extends StatelessWidget {
  final List<String> financialWays = [
    "Banking",
    "Stock market",
    "Loans",
    "Taxing",
    "Insurance"
  ];
  final String name = "Monik";
  @override
  Widget build(BuildContext context) {
    int totalNumberOfQues = 10, numberOfQues = 2;
    return Scaffold(
      body: Container(
        // padding: EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: MediaQuery.of(context).size.height * 0.03),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 180, vertical: 10.0),
              child: Text(
                "Level 2",
                style: GoogleFonts.montserrat(fontSize: 24),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  alignment: Alignment.center,
                  padding: EdgeInsets.symmetric(horizontal: 180),
                  child: new LinearPercentIndicator(
                    width: 100,
                    animation: true,
                    lineHeight: 20.0,
                    animationDuration: 2500,
                    percent: numberOfQues / totalNumberOfQues,
                    linearStrokeCap: LinearStrokeCap.roundAll,
                    progressColor: Color(0xff858585),
                  ),
                ),
                SizedBox(
                  width: 140,
                ),
                Container(
                  height: 30,
                  width: 222,
                  color: Color(0xffC4C4C4),
                  child: Center(
                    child: Text(
                      name,
                      style: GoogleFonts.montserrat(fontSize: 21),
                      textAlign: TextAlign.center,
                      softWrap: true,
                    ),
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
              ],
            ),
            // ),
            SizedBox(
              height: 10,
            ),
            Row(
              children: [
                SizedBox(
                  width: 180,
                ),
                Container(
                  padding: EdgeInsets.symmetric(vertical: 13),
                  alignment: Alignment.center,
                  height: 530,
                  width: 1080,
                  decoration: BoxDecoration(
                    color: Color(0xffC4C4C4),
                    borderRadius: BorderRadius.circular(32),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          height: 230,
                          width: MediaQuery.of(context).size.width,
                          child: Text(
                            "Question",
                            style: GoogleFonts.montserrat(fontSize: 65),
                          ),
                        ),
                        Container(
                          height: 70,
                          width: MediaQuery.of(context).size.width,
                          child: RaisedButton(
                            child: Text(
                              "A. Check this",
                              style: GoogleFonts.montserrat(fontSize: 30),
                              softWrap: true,
                            ),
                            onPressed: () {},
                            color: Color(0xff838383),
                          ),
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Container(
                          height: 70,
                          width: MediaQuery.of(context).size.width,
                          child: RaisedButton(
                            child: Text(
                              "B. Check this",
                              style: GoogleFonts.montserrat(fontSize: 30),
                              softWrap: true,
                            ),
                            onPressed: () {},
                            color: Color(0xff838383),
                          ),
                        ),
                        SizedBox(
                          height: 70,
                        ),
                        Center(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(Icons.emoji_objects),
                              Text(
                                'Tip: ABCDEFGHIJKLMONOPQRSTUVWXYZ',
                                style: GoogleFonts.montserrat(
                                  fontSize: 20,
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
              height: 50,
            ),
            Container(
              height: 100,
              padding: EdgeInsets.all(8),
              child: GridView.builder(
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  childAspectRatio: 3.5,
                  crossAxisCount: 5,
                  crossAxisSpacing: 20,
                  mainAxisSpacing: 20,
                ),
                itemCount: 5,
                itemBuilder: (ctx, index) {
                  return RaisedButton(
                      shape:RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(20)),),
                      onPressed: (){},
                      color: Color(0xffC4C4C4),
                      padding: EdgeInsets.all(10.0),
                      child: Center(
                        child: Text(
                          financialWays[index],
                          style: GoogleFonts.openSans(
                            textStyle: Theme.of(context).textTheme.headline4,
                            color: Colors.black,
                            fontSize: 32,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
