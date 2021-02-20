import 'package:calcam/screens/loginScreen.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import '../screens/loginScreen.dart';
String imgUrl;
String userImageUrl = FirebaseAuth.instance.currentUser.photoURL;
// ignore: missing_return
Widget getUserProfilePic(){
  if(userImageUrl == ''){

    return LoginScreen();
  }
  if (userImageUrl != ''){
    imgUrl = userImageUrl;
    return CircleAvatar(backgroundImage: NetworkImage(imgUrl),
    radius: 15,);
  }

}