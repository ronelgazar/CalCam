import 'package:calcam/Utils/Constants.dart';
import 'package:calcam/Utils/getResult.dart';
import 'package:calcam/services/recognizer.dart';
import 'package:flutter/material.dart';
import 'package:calcam/Utils/camera.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';
class ClassifierResultsAnimation extends StatefulWidget {


  @override
  _ClassifierResultsAnimationState createState() => _ClassifierResultsAnimationState();
}

class _ClassifierResultsAnimationState extends State<ClassifierResultsAnimation>
    with TickerProviderStateMixin {
  AnimationController _colorAnimController;
  Animation _colorTween;

  List<Result> outputs;
  
  @override
  void initState() {
    super.initState();

    //Load TFLite Model;

    //Initialize Camera

    //Setup Animation
    _setupAnimation();

    //Subscribe to TFLite's Classify events
    RecognitionClassifier.tfLiteResultsController.stream.listen((value) {
      value.forEach((element) {
        _colorAnimController.animateTo(element.confidence,
            curve: Curves.bounceIn, duration: Duration(milliseconds: 500));
      });

      //Set Results
      outputs = value;
    setState(() {
        //Set bit to false to allow detection again
        CameraHelper.isDetecting = false;
      });

    });
      //Update results on scre
  }

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Positioned.fill(
      child: Align(
        alignment: Alignment.bottomCenter,
          child: outputs != null && outputs.isNotEmpty
              ? ListView.builder(
                  itemCount: outputs.length,
                  shrinkWrap: true,
                  padding: const EdgeInsets.all(20.0),
                  itemBuilder: (BuildContext context, int index) {
                    return Column(
                      children: <Widget>[
                        Text(
                          Constants.letters[int.parse(outputs[index].label)].toString(),
                          style: TextStyle(
                            color: _colorTween.value,
                            fontSize: 20.0,
                          ),
                        ),
                        AnimatedBuilder(
                            animation: _colorAnimController,
                            builder: (context, child) => LinearPercentIndicator(
                                  width: width * 0.58,
                                  lineHeight: 14.0,
                                  percent: outputs[index].confidence,
                                  progressColor: _colorTween.value,
                                )),
                        Text(
                          "${(outputs[index].confidence * 100.0).toStringAsFixed(2)} %",
                          style: TextStyle(
                            color: _colorTween.value,
                            fontSize: 16.0,
                          ),
                        ),
                      ],
                    );
                  })
              : Center(
                  child: Text("Waiting for model to detect..",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 20.0,
                      ))),
        ),
    ); 
  }

// Constants.letters[_recognitions[0]['label']].toString(),

  void _setupAnimation() {
    _colorAnimController =
        AnimationController(vsync: this, duration: Duration(milliseconds: 500));
    _colorTween = ColorTween(begin: Colors.green, end: Colors.red)
        .animate(_colorAnimController);
  }
 @override
 void dispose(){
    super.dispose();
    _colorAnimController.dispose();
  }
}