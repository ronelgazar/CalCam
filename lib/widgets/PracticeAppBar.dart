import 'package:calcam/Utils/Constants.dart';
import 'package:calcam/widgets/PageNavigator.dart';
import 'package:flutter/material.dart';
import 'package:step_progress_indicator/step_progress_indicator.dart';

Widget exit(){
  return IconButton(icon:Icon(Icons.close,color: Colors.black54), onPressed: () {navigator();},
);}


Widget progressBar(int currentStep){
  return 
  Container(width: 300, child:  
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
         colors: [Colors.yellowAccent, Colors.greenAccent],

     ),
     
     unselectedGradientColor: LinearGradient(
         begin: Alignment.topLeft,
         end: Alignment.bottomRight,
         colors: [ProgressBarConstants.PROGRESS_BAR_OUTLINE_COLOR,ProgressBarConstants.PROGRESS_BAR_OUTLINE_COLOR
         ]),
         
  ));
}

Widget practiceAppBar(){
  return AppBar      (
        elevation: 2.0,
        backgroundColor: Colors.white,
        title:exit(),
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
                progressBar(68),
              ],
            ),
          )
        ],
      );
}

