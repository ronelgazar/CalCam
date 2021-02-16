import 'package:flutter/material.dart';

class Practice extends StatefulWidget {
  @override
  _PracticeState createState() => _PracticeState();
}

class _PracticeState extends State<Practice> {
  @override
  Widget build(BuildContext context) {
    return Container(
  child: ConstrainedBox(
    constraints: BoxConstraints(minHeight: 50),
    child: Icon(
      Icons.add,
      size: 80,
      color: Colors.red,
    ),
  ),
    );
  }
}