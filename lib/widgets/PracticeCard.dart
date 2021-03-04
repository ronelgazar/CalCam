
import 'package:calcam/screens/Recognition.dart';
import 'package:flutter/material.dart';
import 'package:flip_card/flip_card.dart';
import 'package:calcam/Utils/RandomColor.dart';

Widget practiceCard(Widget child){
  return FlipCard( 
          
          flipOnTouch: true,
          front: Container(
              alignment: Alignment.center,
              child: Column( 
                mainAxisAlignment: MainAxisAlignment.center,
                children: [  //NetworkImage 
                 //SizedBox 
                  SizedBox( 
                    width: 100, 
                    child: child
                    ), //RaisedButton                 ], 
                ],),
                 //Column 
            ), //Padding 
          
          back:RecognitionScreen()
        );
}