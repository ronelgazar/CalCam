import 'package:calcam/Utils/Constants.dart';
import 'package:calcam/services/UpdateDocument.dart';
import 'package:flutter/material.dart';
import 'package:step_progress_indicator/step_progress_indicator.dart';

class ProgressBar extends StatefulWidget {
  ProgressBar({Key key}) : super(key: key);

  @override
  _ProgressBatState createState() => _ProgressBatState();
  
}

class _ProgressBatState extends State<ProgressBar> {
  int currentStep = 0;


  @override
  Widget build(BuildContext context) {
    return GestureDetector( 
      onTap: (){
        setState((){
          
            if(currentStep>=ProgressBarConstants.PROGRESS_BAR_TOTAL_STEPS){
              UpdateDoc('progress',currentStep);
              return currentStep = 0;
              
              }
            UpdateDoc('progress',currentStep);
            return currentStep++;
        });
      },
      child: 
    Padding(padding: EdgeInsets.only(right: 45),
  child:
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
         
  ))));
  }
}