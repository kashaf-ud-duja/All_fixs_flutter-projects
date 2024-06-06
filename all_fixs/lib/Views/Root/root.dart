import "package:all_fixs/Controller/User%20Controller/user_controller.dart";
import "package:all_fixs/Models/my_user.dart";
import "package:all_fixs/Views/Auth/Login.dart";
import "package:all_fixs/Views/Homepage/home_page.dart";
import "package:all_fixs/Views/Profile/profile_setup.dart";
import "package:all_fixs/Views/Widgets/Auth/splash_loader_animation.dart";
import "package:flutter/material.dart";
import "package:provider/provider.dart";

enum AuthStatus {
  firstTime,
  authenticating,
  notLoggedIn,
  loggedInHome,
  noProfile,
  noFriend,
}

class Root extends StatelessWidget {
AuthStatus authStatus = AuthStatus.authenticating;

  @override
  Widget build(BuildContext context) {
    UserController userController = Provider.of<UserController>(context, listen: true);


    return FutureBuilder(
      future: null, 
    builder: (context, snapshot) {
if (userController.currentUser.uid == null) {
  authStatus = AuthStatus.notLoggedIn;
}
if (userController.currentUser.uid != null) {
if (userController.currentUser.displayname == null) {
  authStatus = AuthStatus.noProfile;
}
if (userController.currentUser.displayname != null && userController.currentUser.friendsid == null ) {
  authStatus = AuthStatus.noFriend;
}
if (userController.currentUser.displayname != null && userController.currentUser.friendsid != null ) {
  authStatus = AuthStatus.loggedInHome;
}
}
switch (authStatus) {
  case AuthStatus.authenticating:
    return SplashAnimator();
    case AuthStatus.noProfile:
    return ProfileSetup();
    case AuthStatus.notLoggedIn:
    return logIn();
    case AuthStatus.loggedInHome:
    return HomePage();
  default:
  return SplashAnimator();
}
    });
  }
}
