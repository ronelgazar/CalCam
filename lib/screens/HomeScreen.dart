import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:calcam/services/sign_in.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:calcam/screens/loginScreen.dart';


class HomeScreen extends StatefulWidget
{
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>
{

Widget account(){
  
  return Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
    CircleAvatar(backgroundImage: NetworkImage(imageUrl),
    radius: 15,)
    
  ,],);
 }

Widget points(){
  return Row(children: [Text('150', style: TextStyle(color: Colors.blue, fontWeight: FontWeight.w700, fontSize: 15.0),),
                Icon(MdiIcons.starFourPoints, color: Colors.red),]);                


}

Widget accountPopMenu() {
  return Column(
    children:
        [PopupMenuButton(
        onSelected: (value) {
          Fluttertoast.showToast(
              msg: "You have selected " + value.toString(),
              toastLength: Toast.LENGTH_SHORT,
              gravity: ToastGravity.BOTTOM,
              timeInSecForIosWeb: 1,
              backgroundColor: Colors.black,
              textColor: Colors.white,
              fontSize: 15.0
          );
        },
        itemBuilder: (context) => [
          PopupMenuItem(
            value: 1,
              child: Row(
              children: <Widget>[
              Padding(
                padding: const EdgeInsets.fromLTRB(2, 2, 8, 2),
                child: GestureDetector(child:Text("log out"),
                  onTap: () {
                    signOutGoogle();
                    Navigator.of(context).pushReplacement(
                    MaterialPageRoute(builder: (context) => LoginScreen()));
                  },),
              ),
        ],
    )),
          PopupMenuItem(
              value: 2,
              child: Row(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.fromLTRB(2, 2, 8, 2),
                child: Icon(Icons.settings),
              ),
              Text('settings')
            ],
          )),
        ],icon: account()),
      ]);
}





  @override
  Widget build(BuildContext context)
  {
    return Scaffold
    (
      appBar: AppBar
      (
        elevation: 2.0,
        backgroundColor: Colors.white,
        title:points(),
        actions: <Widget>
        [
          
          Container
          (
            child: Row
            (
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>
              [
                accountPopMenu(),
              ],
            ),
          )
        ],
      ),
      body: 
      StaggeredGridView.count(
        crossAxisCount: 2,
        crossAxisSpacing: 12.0,
        mainAxisSpacing: 12.0,
        padding: EdgeInsets.symmetric(horizontal: 12.0, vertical: 8.0),
        children: <Widget>[
          _buildTile(
            Padding
            (
              padding: const EdgeInsets.all(24.0),
            ),
          ),
          //  MaterialPageRoute(builder: (context) => LoginScreen()
          InkWell(
            child:
          _buildTile(
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
          ),),
          onTap:() =>  Navigator.of(context).pushReplacement(
                    MaterialPageRoute(builder: (context) => LoginScreen())) ,),
          _buildTile(
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
          _buildTile(
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
          ),
          _buildTile(
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

  Widget _buildTile(Widget child, {Function() onTap}) {
    return Material(
      elevation: 14.0,
      borderRadius: BorderRadius.circular(12.0),
      shadowColor: Color(0x802196F3),
      child: InkWell
      (
        // Do onTap() if it isn't null, otherwise do print()
        onTap: onTap != null ? () => onTap() : () { print('Not set yet'); },
        child: child
      )
    );
  }
}

