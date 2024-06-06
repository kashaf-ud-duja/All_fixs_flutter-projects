import 'package:all_fixs/Models/my_user.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_cloud_firestore/firebase_cloud_firestore.dart';

class UserDatabase {
  FirebaseFirestore firestore = FirebaseFirestore.instance;
  // function creation(createUserInDb)
  Future<bool> createUserInDb(MyUser user) async {
    try {
      await firestore.collection("users").doc(user.uid).set({
        "uid": user.uid,
        "email": user.emailAddress,
        "password": user.password,
        "userName": user.username,
        "displayName": user.displayname,
        "avatarUrl": user.avatarURL,
        "gender": user.gender,
        "chatRoomId": user.chatRoomid,
        "friendsId": user.friendsid,
        "phoneNumber": user.phonenumber,
        "accountCreated": Timestamp.now(),
      });
      return true;
    } catch (e) {
      print(e);
      return false;
    }
  }

  Future<MyUser> getUserInfoById(String uid) async {
    MyUser myUser = MyUser();
    DocumentSnapshot<Map<String, dynamic>> documentSnapshot = await firestore
        .collection("users")
        .doc("z1BO24gOXZWKB0x4DbhxeXVzSIo2")
        .get();
myUser.uid = documentSnapshot.data()!["uid"];
myUser.emailAddress = documentSnapshot.data()!["emailAddress"];
myUser.avatarURL = documentSnapshot.data()!["avatarURL"];
myUser.username = documentSnapshot.data()!["username"];
myUser.displayname = documentSnapshot.data()!["displayname"];
myUser.chatRoomid = documentSnapshot.data()!["chatRoomid"];
myUser.friendsid = documentSnapshot.data()!["friendsid"];
myUser.gender = documentSnapshot.data()!["gender"];
myUser.phonenumber = documentSnapshot.data()!["phonenumber"];
myUser.accountcreated = documentSnapshot.data()!["accountcreated"];
    return myUser;
  }
}
