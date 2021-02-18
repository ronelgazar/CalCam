import 'package:calcam/screens/practice.dart';
import 'package:calcam/widgets/BuildTile.dart';
import 'package:calcam/widgets/PracticeAppBar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

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
      body:
      
    Container(
        child:
        FlatButton(color: Colors.orange,child: Text("hi"),onPressed:() => Navigator.of(context).pushReplacement(
                    MaterialPageRoute(builder: (context) =>Practice()),)
  )));
  }
}
