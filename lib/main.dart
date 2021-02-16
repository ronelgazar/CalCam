import 'package:flutter/material.dart';
import 'screens/loginScreen.dart';
import 'screens/HomeScreen.dart';
void main() => runApp(MyApp());

class MyApp extends StatelessWidget
{
  @override
  Widget build(BuildContext context)
  {
    return MaterialApp
      (
      title: 'CalCam',
      theme: ThemeData(primaryColor: Colors.blue),
      home: LoginScreen(),
    );
  }
}