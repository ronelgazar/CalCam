import 'package:calcam/Utils/Constants.dart';
import 'package:calcam/screens/HomeScreen.dart';
import 'package:flutter/material.dart';
import 'package:step_progress_indicator/step_progress_indicator.dart';

Widget exit(BuildContext context){
  return IconButton(icon:Icon(Icons.close,color: Colors.black54),  onPressed:() => Navigator.of(context).pushReplacement(
                    MaterialPageRoute(builder: (context) =>HomeScreen())));}


Widget progressBar(int currentStep){
  return 
  Container(width: ProgressBarConstants.PROGRESS_BAR_WIDTH, child:  
   StepProgressIndicator(
    totalSteps: ProgressBarConstants.PROGRESS_BAR_TOTAL_STEPS,
     currentStep: currentStep,
     size: 20,
     padding: 0,
     selectedColor: Colors.yellow,
     unselectedColor: Colors.white54,
     roundedEdges: Radius.circular(10),
     
     selectedGradientColor: LinearGradient(
         begin: Alignment.topLeft,
         end: Alignment.bottomRight,
         colors: ProgressBarConstants.PROGRESS_BAR_PROGRRSS_COLORS,

     ),
     
     unselectedGradientColor: LinearGradient(
         begin: Alignment.topLeft,
         end: Alignment.bottomRight,
         colors: ProgressBarConstants.PROGRESS_BAR_OUTLINE_COLORS
         ),
         
  ));
}

Widget practiceAppBar(BuildContext context){
  return AppBar      (
        elevation: 2.0,
        backgroundColor: Colors.white,
        title:exit(context),
        actions: <Widget>
        [
          
          Expanded
          (
            child: Row
            (
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>
              [
                progressBar(69),
              ],
            ),
          )
        ],
      );
}

