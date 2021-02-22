import 'package:calcam/services/UpdateDocument.dart';
import 'package:calcam/widgets/PageNavigator.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';




void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  UpdateDoc('progress',0);
  runApp(MyApp());}

class MyApp extends StatelessWidget
{
  @override
  Widget build(BuildContext context)
  {
    return Container(child: 
      navigator(),);
  }
}
