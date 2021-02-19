import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:tflite/tflite.dart';

class Recognizer extends StatefulWidget {  
  Recognizer({Key key, this.cameras}) : super(key: key);
  final List<CameraDescription> cameras;




  @override
  _RecognizerState createState() => _RecognizerState();
}

class _RecognizerState extends State<Recognizer> {
  List<dynamic> _recognitions;
  int _imageHeight = 0;
  int _imageWidth = 0;
  String _model = "";

  loadModel() async {
    String res;
      res = await Tflite.loadModel(
      model: "assets/model.tflite",
      labels: "assets/labels.txt",
      );
      print(res);
  }

    setRecognitions(recognitions, imageHeight, imageWidth) {
    setState(() {
      _recognitions = recognitions;
      _imageHeight = imageHeight;
      _imageWidth = imageWidth;
    });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
       body: Column(children: [RaisedButton(child: Text('bruh'),onPressed: loadModel(),),
       
       
       ],)
        
    );
  }
}