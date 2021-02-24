import 'package:firebase_auth/firebase_auth.dart';
import 'package:pretty/models/myuser.dart';
import 'package:pretty/models/workout.dart';

import 'database.dart';
class AuthService {

  final FirebaseAuth _auth = FirebaseAuth.instance;

  // create user obj based on firebaseuser
  MyUser _userFromFirebaseUser(User user) {
    return user != null ? MyUser(uid: user.uid) : null;
  }

  Stream<MyUser> get user {
    return _auth.authStateChanges().map(_userFromFirebaseUser);
  }
  //sign in anon
  Future signInAnon() async {
    try {
      UserCredential result = await _auth.signInAnonymously();
      User user = result.user;
      return _userFromFirebaseUser(user);
    } catch(e) {
      print(e.toString());
      return null;
    }
  }

  //sign in email + pass
  Future signInWithEmailAndPassword(String email, String password) async {
    try {
      UserCredential result = await _auth.signInWithEmailAndPassword(email: email, password: password);
      User user = result.user;
      return _userFromFirebaseUser(user);

    } catch(e) {
      print(e.toString());
      return null;
    }
  }
  //register with email and pass
  Future registerWithEmailAndPassword(String email, String password) async {
    try {
      UserCredential result = await _auth.createUserWithEmailAndPassword(email: email, password: password);
      User user = result.user;

      // create new document for user with the uid
      await DatabaseService(uid: user.uid).initUserData();
      await DatabaseService(uid: user.uid).updateUserData(1, "bruh",  "yea aight", "brrrr");

      return _userFromFirebaseUser(user);
    } catch(e) {
      print(e.toString());
      return null;
    }
  }


  //sign out
  Future signOut() async {
    try {
      return await _auth.signOut();
    } catch(e) {
      print(e.toString());
      return null;
    }
  }
}