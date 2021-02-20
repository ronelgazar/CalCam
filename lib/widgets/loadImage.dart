import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:calcam/services/getPracticeImage.dart';

Widget loadLettersImage(BuildContext context,String image){
  FutureBuilder(
  future: getImage(context, image),
  builder: (context, snapshot){
    if(snapshot.connectionState == ConnectionState.done){
      return Container(
        width: MediaQuery.of(context).size.width / 1.2,
        height: MediaQuery.of(context).size.width / 1.2,
        child: snapshot.data,
      );
    }

    if(snapshot.connectionState == ConnectionState.waiting){
      return Container(
        width: MediaQuery.of(context).size.width / 1.2,
        height: MediaQuery.of(context).size.width / 1.2,
        child: CircularProgressIndicator(),
      );
    }

    if(snapshot.connectionState == ConnectionState.none){
      return Container(child:Text("connection failed"));
    }

    return Container();
  }
  );
}