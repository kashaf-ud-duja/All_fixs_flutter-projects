import 'package:firebase_cloud_firestore/firebase_cloud_firestore.dart';

class MyUser {
  String? uid;
  String? emailAddress;
  String? password;
  String? username;
  String? displayname;
  String? avatarURL;
  String? gender;
  String? chatRoomid;
  String? friendsid;
  String? phonenumber;
  bool? isLoadingStartupData = true;
  Timestamp? accountcreated;

  MyUser(
      {this.uid,
      this.accountcreated,
      this.avatarURL,
      this.chatRoomid,
      this.displayname,
      this.emailAddress,
      this.friendsid,
      this.gender,
      this.password,
      this.phonenumber,
      this.username,
      this.isLoadingStartupData});
}
