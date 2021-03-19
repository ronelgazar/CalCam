import 'package:calcam/Utils/AlignmentAndSizeAnimationHandler.dart';
import 'package:flutter/material.dart';

class CheckAndStartButton extends StatefulWidget {
  
  AlignmentGeometry recognitionaAnimationAlignment;
  SizeAnimationHandlerState sizeAnimationHandler  = new SizeAnimationHandlerState();

  @override
  _CheckAndStartButtonState createState() => _CheckAndStartButtonState();
}

class _CheckAndStartButtonState extends State<CheckAndStartButton> {
String buttonText;

  @override
  void initState() {
    super.initState();
      // widget.sizeAnimationHandler.handleAlignmentChange();
    
    // widget.recognitionaAnimationAlignment = Alignment.center;
    buttonText = "התחל/י";
  }
  @override
  void dispose() {
    
    super.dispose();
  }

  void handleButtonpress() {
    setState(() {
      buttonText = "בדיקה";
      // widget.sizeAnimationHandler.handleAlignmentChange();
    });
  }


  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(18.0),
          side: BorderSide(color: Colors.green[400])),
      onPressed: () {
        handleButtonpress();
        if(widget.sizeAnimationHandler.mounted){
        widget.sizeAnimationHandler.handleSize();}},
      
      color: Colors.green[400],
      textColor: Colors.white,
      child: Text(buttonText, style: TextStyle(fontSize: 14)),
    );
  }
}
