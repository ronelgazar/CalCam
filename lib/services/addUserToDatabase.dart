import 'package:calcam/Utils/getDocUid.dart';
import 'package:calcam/screens/HomeScreen.dart';
import 'package:calcam/services/authentication.dart';
import 'package:flutter/material.dart';
// Import the firebase_core and cloud_firestore plugi0n
import 'package:cloud_firestore/cloud_firestore.dart';

class AddUser extends StatelessWidget {
  final String name;
  final String email;
  final int points;
  final int progress;
  final String userRole;
  AddUser(this.name,this.email,this.points,this.progress,this.userRole);
     
     void addUser(var users) {
      print('start');
      // Call the user's CollectionReference to add a new user
      return users
          .set({
            'name': this.name,
            'email': this.email, 
            'points': this.points,
            'progress' : this.progress, 
            'Role' : this.userRole

          })  
          .then((value) => print("User Added"))
          .catchError((error) => print("Failed to add user: $error"));
    }
  @override
  Widget build(BuildContext context) {

    // Create a CollectionReference called users that references the firestore collection
    DocumentReference users = getDoc();
    final uid = getUid();
    checkExist() {
      FirebaseFirestore.instance.doc("users/$uid").get().then((doc) { //checks for existing document with user info
        if (doc.exists){
        print('bruh$userId');
        }else{
          addUser(users);
          print('unbruh$userId');
      }});
      return HomeScreen();
      
    }
 



    return checkExist();
  }

}





