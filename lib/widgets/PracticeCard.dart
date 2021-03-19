
// import 'package:calcam/widgets/loadImage.dart';
// import 'package:calcam/Utils/ClassifierResultsAnimationController.dart';
// import 'package:calcam/Utils/RandomLetter.dart';
// import 'package:calcam/screens/Recognition.dart';
// import 'package:calcam/widgets/CheckAndStartButton.dart';
// import 'package:calcam/widgets/loadImage.dart';
import 'package:calcam/widgets/CheckAndStartButton.dart';
import 'package:flutter/material.dart';

import 'package:calcam/Utils/RecognitionWithLetterImageState.dart';

class PracticeCard extends StatefulWidget {
  const PracticeCard({Key key} ) : super(key: key);

  @override
  _PracticeCardState createState() => _PracticeCardState();
}


class _PracticeCardState extends State<PracticeCard> {
  @override
  Widget build(BuildContext context){
    return ListView(children: [Container(child:RecognitionWithImageState(),width: 500,height:500),CheckAndStartButton()],
    );
  //     StreamBuilder(
  // initialData: false,
  // stream: slimyCard.stream,
  // builder: ((BuildContext context, AsyncSnapshot snapshot) {
  //   return ListView(
  //     padding: EdgeInsets.zero,
  //     children: <Widget>[
  //       SizedBox(height: 50),
  //       SlimyCard(
  //         color: Colors.indigo[300],
  //         topCardWidget: RecognitionWithImageState(),
  //         bottomCardWidget: ClassifierResultsAnimation(),
  //         ),
  //          //loadLettersImage(context,'letters/'+generatelater()+'.png'),
  //       CheckAndStartButton()
  //       ],

  //   );
  // }),
  
      // child: FlipCard( 
          
      //     flipOnTouch: true,
      //     front: Container(
      //         alignment: Alignment.center,
      //         child: Column( 
      //           mainAxisAlignment: MainAxisAlignment.center,
      //           children: [  //NetworkImage 
      //            //SizedBox 
      //             SizedBox( 
      //               width: 100, 
      //               child: widget.child
      //               ), //RaisedButton                 ], 
      //           ],),
      //            //Column 
      //       ), //Padding 
          
      //     back:RecognitionScreen()
      //   ),
    //);
  }
}
