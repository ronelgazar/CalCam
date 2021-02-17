import 'package:flutter/material.dart';
import 'package:calcam/widgets/PracticeAppBar.dart';

class Practice extends StatefulWidget {
  @override
  _PracticeState createState() => _PracticeState();
}

class _PracticeState extends State<Practice> {

  @override
  Widget build(BuildContext context) {
   return new MaterialApp( 
    home: Scaffold( 
      appBar: practiceAppBar(), //AppBar 
      body: Center( 
        /** Card Widget **/
        child: Card( 
          elevation: 50, 
          shadowColor: Colors.black, 
          color: Colors.greenAccent[100], 
          child: SizedBox( 
            width: 300, 
            height: 500, 
            child: Padding( 
              padding: const EdgeInsets.all(20.0), 
              child: Column( 
                children: [ 
                  CircleAvatar( 
                    backgroundColor: Colors.green[500], 
                    radius: 108, 
                    child: Image(image: AssetImage('assets/pictures/0.jpg')), //NetworkImage 
                    ), 
                  SizedBox( 
                    height: 10, 
                  ), //SizedBox 
                  Text( 
                    'א', 
                    style: TextStyle( 
                      fontSize: 30, 
                      color: Colors.green[900], 
                      fontWeight: FontWeight.w500, 
                    ), //Textstyle 
                  ), //Text 
                  SizedBox( 
                    height: 10, 
                  ), //SizedBox  //Text 
                  SizedBox( 
                    height: 10, 
                  ), //SizedBox 
                  SizedBox( 
                    width: 80, 
                    child: RaisedButton( 
                      onPressed: () => null, 
                      color: Colors.green, 
                      child: Padding( 
                        padding: const EdgeInsets.all(2.0),  //Row 
                      ), //Padding 
                    ), //RaisedButton 
                  ) //SizedBox 
                ], 
              ), //Column 
            ), //Padding 
          ), //SizedBox 
        ), //Card 
      ), //Center 
    ), //Scaffold 
    ); //
  }
}