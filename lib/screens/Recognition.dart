import 'package:calcam/Utils/Logger.dart';
import 'package:calcam/services/recognizer.dart';
import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:calcam/Utils/camera.dart';


class RecognitionScreen extends StatefulWidget {
  @override
  _RecognitionScreenPageState createState() => _RecognitionScreenPageState();

}

class _RecognitionScreenPageState extends State<RecognitionScreen>
    with TickerProviderStateMixin {
  void initState() {
    super.initState();

    //Load TFLite Model
    RecognitionClassifier.loadModel().then((value) {
      setState(() {
        RecognitionClassifier.modelLoaded = true;
      });
    });

    //Initialize Camera
    CameraHelper.initializeCamera();

    //Setup Animation

    //Subscribe to TFLite's Classify events
    //Update results on screen
    setState(() {
      //Set bit to false to allow detection again
      CameraHelper.isDetecting = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<void>(
      future: CameraHelper.initializeControllerFuture,
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.done) {
          // If the Future is complete, display the preview.
          return Stack(
            children: <Widget>[
              CameraPreview(CameraHelper.camera),
              

            ],
          );
        } else {
          // Otherwise, display a loading indicator.
          return Center(child: CircularProgressIndicator());
        }
      },
    );
  }
//Container(color: Colors.indigo[300],child: loadLettersImage(context,'letters/'+generatelater()+'.png'),)
  @override
  void dispose() {
    RecognitionClassifier.disposeModel();
    CameraHelper.camera.dispose();
    Logger.log("dispose", "Clear resources.");
    super.dispose();
  } // TODO add
// Constants.letters[_recognitions[0]['label']].toString(),
}