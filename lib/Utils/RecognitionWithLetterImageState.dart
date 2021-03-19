import 'package:calcam/widgets/CheckAndStartButton.dart';
import 'package:flutter/material.dart';
import 'package:calcam/widgets/loadImage.dart';
import 'package:calcam/Utils/RandomLetter.dart';
import 'package:calcam/Utils/AlignmentAndSizeAnimationHandler.dart';

class RecognitionWithImageState extends StatefulWidget {
  CheckAndStartButton startButton = new CheckAndStartButton();
  @override
  _RecognitionWithImageStateState createState() => _RecognitionWithImageStateState();
}
class _RecognitionWithImageStateState extends State<RecognitionWithImageState> with TickerProviderStateMixin {
  
  @override
  Widget build(BuildContext context) {
    return SizeAnimationHandler(child:LoadLettersImage(image:'letters/'+generatelater()+'.png'));
    
    // return Flexible(child:Column(children: [ SizeAnimationHandler(child:LoadLettersImage(image:'letters/'+generatelater()+'.png',),),CheckAndStartButton()]),
    //TODO fix width:widget.startButton.sizeAnimationHandler.getWidth ,height:widget.startButton.sizeAnimationHandler.getHeight 
          // Stack(
          // children: [
          //   AnimatedAlign(
          //     alignment: recognitionaAnimationAlignment,
          //     curve: Curves.easeInOutBack,
          //     duration: Duration(seconds: 1),
          //     child:,CheckAndStartButton()]);
            
  }
}

