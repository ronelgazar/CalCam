import 'package:calcam/Utils/getUserImage.dart';
import 'package:calcam/screens/loginScreen.dart';
import 'package:calcam/services/authentication.dart';
import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

Widget account(){
  
  return Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      getUserProfilePic(),],);
 }

Widget points(){
  return Row(children: [Text('150', style: TextStyle(color: Colors.blue, fontWeight: FontWeight.w700, fontSize: 15.0),),
                Icon(MdiIcons.starFourPoints, color: Colors.red),]);                


}

Widget accountPopMenu() {
  return Column(
    children:
        [PopupMenuButton(
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

Widget homeAppBar(){
  return AppBar      (
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
      );
}