// ignore_for_file: unused_import
import 'package:all_fixs/Views/Auth/Features/DeviceInfo/device_info.dart';
import 'package:all_fixs/Views/Homepage/Dashboard.dart';
import 'package:all_fixs/Views/Homepage/home_page.dart';
import 'package:all_fixs/Views/Profile/profile.dart';
import 'package:all_fixs/Views/Profile/profile_settings.dart';
import 'package:all_fixs/Views/Widgets/Auth/splash_loader_animation.dart';
import 'package:flutter/material.dart';
import 'package:all_fixs/Views/Auth/Forget_Password.dart';
import 'package:all_fixs/Views/Auth/Login.dart';
import 'package:all_fixs/Views/Auth/Register.dart';
import 'package:all_fixs/Views/Invitation/accept_invite.dart';
import 'package:all_fixs/Views/Invitation/invite_friend.dart';
import 'package:all_fixs/Views/Profile/profile_setup.dart';
import 'package:flutter_sizer/flutter_sizer.dart';
void main() {
  runApp(Allfixs());
}

class Allfixs extends StatelessWidget {
  const Allfixs({super.key});
  @override
  Widget build(BuildContext context) {
          return FlutterSizer(
            builder: (context, orientation, screenType) {
            return MaterialApp(
              title: 'ALL FIXS',
              home: DeviceInfo(),
              debugShowCheckedModeBanner: false,
            );
            }
          );
  }
}
 
