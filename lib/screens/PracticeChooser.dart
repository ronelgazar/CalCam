import 'package:calcam/screens/Recognition.dart';
import 'package:calcam/screens/practice.dart';
import 'package:calcam/widgets/PracticeAppBar.dart';
import 'package:flutter/material.dart';

class PracticeChooser extends StatefulWidget {
  PracticeChooser({Key key}) : super(key: key);

  @override
  _PracticeChooserState createState() => _PracticeChooserState();
}

class _PracticeChooserState extends State<PracticeChooser> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: practiceAppBar(context),
        body: Container(
            child: Center(
                child: Column(
          children: [
            FlatButton(
                color: Colors.orange,
                child: Text("התחל תרגול עם תמונות"),
                onPressed: () => Navigator.of(context).pushReplacement(
                    MaterialPageRoute(builder: (context) => Practice()))),
            FlatButton(
                color: Colors.orange,
                child: Text("בדיקת המכונה"),
                onPressed: () => Navigator.of(context).pushReplacement(
                      MaterialPageRoute(
                          builder: (context) => RecognitionScreen()),
                    ))
          ],
        ))));
  }
}
