import 'package:calcam/Utils/getUserImage.dart';
import 'package:calcam/screens/HomeScreen.dart';
import 'package:calcam/screens/loginScreen.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

String userImageUrl;
Widget navigator () {
  if (FirebaseAuth.instance.currentUser != null) {
    getUserProfilePic();
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: HomeScreen(),
    );
} else {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: LoginScreen(),
    );
}
}