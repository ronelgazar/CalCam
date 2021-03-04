
import 'package:calcam/screens/PracticeChooser.dart';
import 'package:calcam/screens/Recognition.dart';
import 'package:calcam/widgets/HomeAppBar.dart';
import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:firebase_performance/firebase_performance.dart';
import 'package:calcam/widgets/BuildTile.dart';

FirebaseAnalytics analytics;
class HomeScreen extends StatefulWidget
{
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>
{

  perfTrace() async{
    Trace trace = FirebasePerformance.instance.newTrace('HomeScreen_trace');
    trace.start();
    await Future.delayed(Duration(seconds: 5));
    trace.stop();
  }



  @override
  Widget build(BuildContext context)
  {
    analytics = FirebaseAnalytics();

    return Scaffold
    (
      appBar: homeAppBar(),
      body: 
      StaggeredGridView.count(
        crossAxisCount: 2,
        crossAxisSpacing: 12.0,
        mainAxisSpacing: 12.0,
        padding: EdgeInsets.symmetric(horizontal: 12.0, vertical: 8.0),
        children: <Widget>[
          buildTile(
            Padding
            (
              padding: const EdgeInsets.all(24.0),
            ),
          ),
          //  MaterialPageRoute(builder: (context) => LoginScreen()

          buildTile(

            Padding(
              padding: const EdgeInsets.all(24.0),
              child: Column
              (
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>
                [
                  Material
                  (
                    color: Colors.teal,
                    shape: CircleBorder(),
                    child: Padding
                    (
                      padding: const EdgeInsets.all(16.0),
                      child: Icon(MdiIcons.abjadHebrew,color: Colors.white, size: 30.0),
                    )
                  ),
                  Padding(padding: EdgeInsets.only(bottom: 16.0)),
                  Text('תרגול', style: TextStyle(color: Colors.black, fontWeight: FontWeight.w700, fontSize: 18.0)),
                  Text('תשיג את הרצף היומי', style: TextStyle(color: Colors.black45))
                  ,
                ]
              ),
          )          ,onTap:() => Navigator.of(context).pushReplacement(
                    MaterialPageRoute(builder: (context) => PracticeChooser())),),

          buildTile(
            Padding
            (
              padding: const EdgeInsets.all(24.0),
              child: Column
              (
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>
                [
                  Material
                  (
                    color: Colors.amber,
                    shape: CircleBorder(),
                    child: Padding
                    (
                      padding: EdgeInsets.all(16.0),
                      child: Icon(Icons.lightbulb_outline, color: Colors.white, size: 30.0),
                    )
                  ),
                  Padding(padding: EdgeInsets.only(bottom: 16.0)),
                  Text('טיפ יומי', style: TextStyle(color: Colors.black, fontWeight: FontWeight.w700, fontSize: 18.0)),
                  Text('טקסט טיפ יומי ', style: TextStyle(color: Colors.black45)),
                ]
              ),
            ),
          ),
          buildTile(
            Padding
                (
                  padding: const EdgeInsets.all(24.0),
                  child: Column
                  (
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>
                    [
                      Row
                      (
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>
                        [
                          Column
                          (
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>
                            [
                              Text('ניתוח של הכתיבה', style: TextStyle(color: Colors.green)),
                              Text('נתח את הכתיבה שלך', style: TextStyle(color: Colors.black, fontWeight: FontWeight.w700, fontSize: 28.0)),
                            ],
                          ),
                        ],
                      ),
                      Padding(padding: EdgeInsets.only(bottom: 4.0)),
                    ],
                  )
                ),
                onTap:() => Navigator.of(context).pushReplacement(
                    MaterialPageRoute(builder: (context) => RecognitionScreen())),),
          buildTile(
            Padding
            (
              padding: const EdgeInsets.all(24.0),
              child: Row
              (
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>
                [
                  Column
                  (
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>
                    [
                      Text('כתב יד לטקסט', style: TextStyle(color: Colors.redAccent)),
                      Text('כתב להקלדה', style: TextStyle(color: Colors.black, fontWeight: FontWeight.w700, fontSize: 26))
                    ],
                  ),
                  Material
                  (
                    color: Colors.red,
                    borderRadius: BorderRadius.circular(24.0),
                    child: Center
                    (
                      child: Padding
                      (
                        padding: EdgeInsets.all(16.0),
                        child: Icon(MdiIcons.typewriter, color: Colors.white, size: 30.0),
                      )
                    )
                  )
                ]
              ),
            ),
          
          )
        ],
        staggeredTiles: [
          StaggeredTile.extent(2, 0),
          StaggeredTile.extent(1, 180.0),
          StaggeredTile.extent(1, 180.0),
          StaggeredTile.extent(2, 220.0),
          StaggeredTile.extent(2, 110.0),
        ],
      )
    );
  }

}

