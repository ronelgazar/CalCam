import 'package:calcam/screens/HomeScreen.dart';
import 'package:calcam/services/authentication.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
// Import the firebase_core and cloud_firestore plugi0n
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:calcam/services/authentication.dart';

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
        final User user = FirebaseAuth.instance.currentUser;
        final uid = user.uid;
    // Create a CollectionReference called users that references the firestore collection
    DocumentReference users = FirebaseFirestore.instance.collection('users').doc(uid);

    checkExist() {
    bool exists = false;
      FirebaseFirestore.instance.doc("users/$uid").get().then((doc) {
        if (doc.exists){
        exists = true;
        print('bruh$userId');
        }else{
          exists = false;
          addUser(users);
          print('unbruh$userId');
      }});
      return HomeScreen();
      
    }
 



    return checkExist();
  }

}





