import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class BankAccounts extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var w = MediaQuery.of(context).size.width / 1440;
    var h = MediaQuery.of(context).size.height / 1024;

    return Scaffold(
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Center(
              child: Container(
                width: 1080 * w,
                height: 676 * h,
                decoration: BoxDecoration(
                    color: Colors.amber,
                    borderRadius: BorderRadius.all(Radius.circular(48))),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    FlatButton(
                      onPressed: () {},
                      child: Container(
                          width: 254 * w,
                          height: 489 * h,
                          decoration: BoxDecoration(
                              color: Colors.red[400],
                              borderRadius:
                                  BorderRadius.all(Radius.circular(18))),
                          child: Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(21),
                                child: Text(
                                  'Current Account',
                                  style: GoogleFonts.montserrat(
                                    fontSize: 24* w,
                                    fontWeight: FontWeight.w500,
                                    color:Color(0xFFF2F2F2)
                                  ),
                                ),
                              ),
                             Container(
                                height: 6 * h,
                                color: Colors.red[200],
                              ),
                              Flexible(
                            child: Padding(
                              padding: const EdgeInsets.all(14.0),
                              child: Text(
                                "Current bank account is opened by businessmen who have a higher number of regular transactions with the bank. It includes deposits, withdrawals, and contra transactions. It is also known as Demand Deposit Account.In current account, amount can be deposited and withdrawn at any time without giving any notice."
,style: GoogleFonts.montserrat(
                                  textStyle:
                                      Theme.of(context).textTheme.headline4,
                                  color: Color(0xFFF2F2F2),
                                  fontSize:  15* w,
                                  fontWeight: FontWeight.w300,
                                  //letterSpacing: -5,
                                ),
                              
                              ),
                            ),
                          ),
                            ],
                          )),
                    ),
                    FlatButton(
                      onPressed: () {},
                      child: Container(
                          width: 254 * w,
                          height: 489 * h,
                          decoration: BoxDecoration(
                              color: Colors.red[400],
                              borderRadius:
                                  BorderRadius.all(Radius.circular(18))),
                          child: Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(21),
                                child: Text(
                                  'Savings Account',
                                  style: GoogleFonts.montserrat(
                                    fontSize: 24* w,
                                    fontWeight: FontWeight.w500,
                                     color:Color(0xFFF2F2F2)
                                  ),
                                ),
                              ),
                             Container(
                                height: 6 * h,
                                color: Colors.red[200],
                              ),
                              Flexible(
                            child: Padding(
                              padding: const EdgeInsets.all(14.0),
                              child: Text(
                                "A savings account is an interest-bearing deposit account held at a bank or other financial institution. Though these accounts typically pay a modest interest rate, their safety and reliability make them a great option for parking cash you want available for short-term needs.",
                                style: GoogleFonts.montserrat(
                                  textStyle:
                                      Theme.of(context).textTheme.headline4,
                                  color: Color(0xFFF2F2F2),
                                  fontSize:  15* w,
                                  fontWeight: FontWeight.w300,
                                  //letterSpacing: -5,
                                ),
                               
                              ),
                            ),
                          ),
                            ],
                          )),
                    ),
                    FlatButton(
                      onPressed: () {},
                      child: Container(
                          width: 254 * w,
                          height: 489 * h,
                          decoration: BoxDecoration(
                              color: Colors.red[400],
                              borderRadius:
                                  BorderRadius.all(Radius.circular(18))),
                          child: Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(21),
                                child: Text(
                                  'Salary account',
                                  style: GoogleFonts.montserrat(
                                    fontSize: 24* w,
                                    fontWeight: FontWeight.w500,
                                     color:Color(0xFFF2F2F2)
                                  ),
                                ),
                              ),
                             Container(
                                height: 6 * h,
                                color: Colors.red[200],
                              ),
                              Flexible(
                            child: Padding(
                              padding: const EdgeInsets.all(14.0),
                              child: Text(
                                "Salary account is the account which you have opened as per the tie-up between your employer and the bank. This is the account, where salaries of every employee are credited to at the beginning of the pay cycle. Employees can pick their type of salary account based on the features they want.",   style: GoogleFonts.montserrat(
                                  textStyle:
                                      Theme.of(context).textTheme.headline4,
                                  color: Color(0xFFF2F2F2),
                                  fontSize:  15* w,
                                  fontWeight: FontWeight.w300,
                                  //letterSpacing: -5,
                                ),
                                
                              ),
                            ),
                          ),
                            ],
                          )),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 72 * w),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Icon(Icons.emoji_objects, size: 36, color: Colors.amber),
                Text(
                  'Tip :  ufhaidukvba doukhv basikhbvz',
                  style: GoogleFonts.montserrat(
                    fontSize: 24,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
