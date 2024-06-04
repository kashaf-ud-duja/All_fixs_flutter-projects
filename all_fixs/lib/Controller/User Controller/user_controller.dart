import 'package:all_fixs/Models/my_user.dart';
import 'package:all_fixs/Service/user_database.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_cloud_firestore/firebase_cloud_firestore.dart';

class UserController {
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
        UserDatabase().getUserInfoById(loginResults.user!.uid);
      }
      return true;
    } catch (e) {
      print(e);
      return false;
    }
  }
}
