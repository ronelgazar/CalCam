// import 'package:calcam/Utils/RandomLetter.dart';
// import 'package:calcam/widgets/PracticeCard.dart';
// import 'package:calcam/widgets/loadImage.dart';
import 'package:flutter/material.dart';

class TopDecorationWidget extends StatelessWidget {


   final String title;
   final List<Color>  colors;
   final Widget  child;
   
  TopDecorationWidget({Key key, this.title,this.colors,this.child}) : super(key: key);
   

  @override
  Widget build(BuildContext context,) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          colors: colors
            // Colors.orange[900],
            // Colors.orange[800],
            // Colors.orange[400]
        
        )
      ), 
            child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          SizedBox(height: 30,),
          Padding(
            padding: EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(title, style: TextStyle(color: Colors.white, fontSize: 20),),
              ],
            ),
          ),
          SizedBox(height: 10),
      Expanded(child: Container(decoration: BoxDecoration(color: Colors.white,
      borderRadius: BorderRadius.only(topLeft: Radius.circular(60), topRight: Radius.circular(60))),
      child: child,))]));
  //     ))]));
  // }
}}