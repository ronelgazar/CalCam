import 'package:calcam/Utils/getImage.dart';
import 'package:calcam/screens/loginScreen.dart';
import 'package:calcam/services/sign_in.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

Widget account(){
  
  return Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      getImage(),],);
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