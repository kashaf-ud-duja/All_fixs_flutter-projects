import 'package:all_fixs/Controller/User%20Controller/user_controller.dart';
import 'package:all_fixs/Views/Root/root.dart';
import 'package:all_fixs/Views/Widgets/Auth/splash_loader_animation.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class SplashScreen extends StatelessWidget {

  UserController userController = UserController();

  @override
  Widget build(BuildContext context) {
      userController = Provider.of<UserController>(context, listen: false);
    if (userController.currentUser.uid == null) {
      return FutureBuilder(
        future: userController.checkUserSigninInfo(),
        builder: (context, snapshot) {
          // print(snapshot.data!.uid);
          if (snapshot.hasData) {
            return Root();
          } else {
            return SplashAnimator();
          }
        },
      );
    } else {
      return Root();
    }
  }
}
