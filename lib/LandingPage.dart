import 'package:flutter/material.dart';

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
     backgroundColor: Colors.white60,
      body: Column( 
      
       children: <Widget>[
         // color :Colors.black38, 
         Center(
          
           child : Card(

              elevation: 20,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(50),
            ),
            
            color: Colors.black12 ,
             child: Padding(
             padding: const EdgeInsets.symmetric(
                            horizontal: 200.0, vertical: 30),
             child:
                  Text(
                    'FINANCE GAME',
                    style: Theme.of(context).textTheme.headline4,
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
            color: Colors.black38 ,
            child: Padding(
              padding: const EdgeInsets.all(40.0),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children:<Widget> [


                 
                  Card(
                    
                       color: Colors.black45 ,
                         shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(50),
            ),
                       child: Padding(
                         padding: const EdgeInsets.symmetric(
                            horizontal: 150.0, vertical: 30),
                       child:  Column(
                       crossAxisAlignment: CrossAxisAlignment.start,
                       children: <Widget>[
                      TextField(
                        controller: myController,
              
                        decoration:InputDecoration (
                          border: OutlineInputBorder(),
                          labelText: 'Enter your Name',
                          


                          
                        ),
                      ),

                    ],
                    
                  )
                       ),

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
                   color: Colors.black12,

                   onPressed: () {
          return showDialog(
            context: context,
            builder: (context) {
              return AlertDialog(
              
                content: Text("Welcome to our Finance Game, " +myController.text),
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
