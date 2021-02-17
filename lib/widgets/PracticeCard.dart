
import 'package:flutter/material.dart';

Widget practiceCard(Color color,Widget child){
  return Card( 
          elevation: 50, 
          shadowColor: Colors.black, 
          color: color, 
          child: SizedBox( 
            width: 300, 
            height: 500, 
            child: Padding( 
              padding: const EdgeInsets.all(20.0), 
              child: Column( 
                children: [  //NetworkImage 
                 //SizedBox 
                  SizedBox( 
                    width: 80, 
                    child: child
                    ), //RaisedButton                 ], 
                ],), //Column 
            ), //Padding 
          ), //SizedBox 
        );
}