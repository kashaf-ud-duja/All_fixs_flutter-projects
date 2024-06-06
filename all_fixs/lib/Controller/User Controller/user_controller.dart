import 'package:all_fixs/Models/my_user.dart';
import 'package:all_fixs/Service/user_database.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_cloud_firestore/firebase_cloud_firestore.dart';
import 'package:flutter/material.dart';

class UserController with ChangeNotifier {
  MyUser currentUser = MyUser();
  FirebaseAuth auth = FirebaseAuth.instance;
  FirebaseFirestore firestore = FirebaseFirestore.instance;

  // it's a function of registered users
  Future<bool> registerUser(String email, String password) async {
// ignore: avoid_print
    MyUser user = MyUser();
    try {
      UserCredential authresults = await auth.createUserWithEmailAndPassword(
          email: email, password: password);
      UserCredential loginResults = await auth.signInWithEmailAndPassword(
          email: email, password: password);
      if (authresults.user != null) {
        print("Adding info to database");
        user.uid = authresults.user!.uid;
        user.emailAddress = authresults.user!.email;
        user.password = password;
        UserDatabase().createUserInDb(user);
      }
      return true;
    } catch (e) {
      print(e);
      return false;
    }
  }

  Future<bool> loginUser(String email, String password) async {
    try {
      UserCredential loginResults = await auth.signInWithEmailAndPassword(
          email: email, password: password);
      if (loginResults.user != null) {
        currentUser =
            await UserDatabase().getUserInfoById(loginResults.user!.uid);
        print(currentUser.username);
      }
      return true;
    } catch (e) {
      print(e);
      return false;
    }
  }

  Future<bool> signOut() async {
    try {
      await auth.signOut();
      return true;
    } catch (e) {
      print(e);
      return false;
    }
  }

  void setCurrentUser(MyUser user) {
    currentUser = user;
    notifyListeners();
  }

  Future<MyUser> checkUserSigninInfo() async {
    try {
      MyUser myUser = MyUser();
      myUser.isLoadingStartupData = true;
      currentUser = myUser;
      auth.authStateChanges().listen((event) async {
        if (event?.uid == null) {
          myUser.uid = null;
          myUser.isLoadingStartupData = false;
          setCurrentUser(myUser);
        } else {
          myUser.uid = event?.uid;
          myUser = await UserDatabase().getUserInfoById(auth.currentUser!.uid);
          setCurrentUser(myUser);
        }
      });
      print(myUser.uid);
      return myUser;
    } catch (e) {
      print(e);
      return MyUser();
    }
  }
}
