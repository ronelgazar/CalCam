import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

final User user = FirebaseAuth.instance.currentUser;

DocumentReference getDoc(){

  return FirebaseFirestore.instance.collection('users').doc(getUid());
}
getUid(){
  return user.uid;

}