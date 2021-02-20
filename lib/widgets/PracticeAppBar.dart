import 'package:calcam/Utils/Constants.dart';
import 'package:calcam/screens/HomeScreen.dart';
import 'package:flutter/material.dart';
import 'package:step_progress_indicator/step_progress_indicator.dart';
import 'package:calcam/widgets/progressBar.dart';

Widget exit(BuildContext context){
  return Padding(padding: EdgeInsets.only(left: 16),
  child:
  IconButton(icon:Icon(Icons.close,color: Colors.black54),tooltip: 'חזור'  ,onPressed:() => Navigator.of(context).pushReplacement(
                    MaterialPageRoute(builder: (context) =>HomeScreen()))));}


Widget practiceAppBar(BuildContext context){
  return AppBar      (
        elevation: 2.0,
        backgroundColor: Colors.white,
        actions: <Widget>
        [
          exit(context),
          Expanded
          (
            child: Row
            (
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>
              [
                ProgressBar(),
              ],
            ),
          )
        ],
      );
}

