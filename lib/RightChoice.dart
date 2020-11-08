import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class RightChoice extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

       backgroundColor: Color(0XFF191D38),

       body: Column(
         children: <Widget>[
             SizedBox(
             height: 200,
           ),
          //  Card(

          //      color: Color(0XFF191D38),
              //         shape: RoundedRectangleBorder(
              //           borderRadius: BorderRadius.circular(50),
              //         ),

          Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 50.0, vertical: 50),
           child:Center(
             
             child: Text(
             'Great Work Done',
              style: GoogleFonts.openSans(
                    textStyle: Theme.of(context).textTheme.headline4,
                    color: Color(0xFFFffffff),
                    fontSize: 50,
                    fontWeight: FontWeight.w300,
                    //letterSpacing: -5,
                  ),

           ),
           ),
            ),
        //   ),
           SizedBox(
             height: 100,
           ),
           RaisedButton(
               shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(50),
                        ),
              padding: const EdgeInsets.symmetric(
                            horizontal: 100.0, vertical: 30),
              color: Color(0XFF0AB286),
             elevation: 15, 
             onPressed: () {
               //for required action
               },
               child: Text(
                 "Continue",
                   style: GoogleFonts.openSans(
                    textStyle: Theme.of(context).textTheme.headline4,
                    color: Colors.black,
                    fontSize: 32,
                    fontWeight: FontWeight.w300,
                    //letterSpacing: -5,
                  ),

               
               ),
           ),
         ],
       ),

      
    );
  }
}
