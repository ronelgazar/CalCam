import 'package:calcam/screens/loginScreen.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
String ImgUrl;
String userImageUrl = FirebaseAuth.instance.currentUser.photoURL;
Widget getImage(){
  if(userImageUrl == ''){

    return LoginScreen();
  }
  if (userImageUrl != ''){
    ImgUrl = userImageUrl;
    return CircleAvatar(backgroundImage: NetworkImage(ImgUrl),
    radius: 15,);
  }

}