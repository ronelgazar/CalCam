import 'package:calcam/Utils/RandomColor.dart';
import 'package:calcam/widgets/PracticeCard.dart';
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
      appBar: practiceAppBar(context), //AppBar 
      body: Center( 
        /** Card Widget **/
        child: practiceCard(getRandomColor(),Center(child:CircleAvatar(child: CircleAvatar(child:Icon(Icons.face))),
        ), //Card  //Center //Scaffold 
    ),),); //
  }
}
