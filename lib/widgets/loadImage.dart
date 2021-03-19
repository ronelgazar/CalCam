import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:calcam/services/getPracticeImage.dart';
import 'package:calcam/Utils/AlignmentAndSizeAnimationHandler.dart';


class LoadLettersImage extends StatefulWidget {
  final String image;
  double width;
  double height;
  
  LoadLettersImage({

    Key key,
    this.width,
    this.height,
    this.image,
  }) : super(key: key);

  @override
  _LoadLettersImageState createState() => _LoadLettersImageState();
}

class _LoadLettersImageState extends State<LoadLettersImage> {
  SizeAnimationHandlerState sizeAnimationHandler = new SizeAnimationHandlerState();
  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
    future: getImage(context, widget.image),
    builder: (context, snapshot){
      if(snapshot.connectionState == ConnectionState.done){
        return Container(//MediaQuery.of(context).size.width / 1.2,
          child: snapshot.data,
        );
      }

      if(snapshot.connectionState == ConnectionState.waiting){
        return Container(//sizeAnimationHandler.getHeight,
          child: CircularProgressIndicator(),
        );
      }
      

      return Container();
    }
    );
  }
}