import 'dart:async';

import 'package:all_fixs/Views/Homepage/home_page.dart';
import 'package:all_fixs/Views/Invitation/accept_invite.dart';
import 'package:all_fixs/Views/Profile/profile_setup.dart';
import 'package:circular_profile_avatar/circular_profile_avatar.dart';
import "package:flutter/material.dart";
//import 'package:getwidget/components/button/gf_button.dart';
import 'package:getwidget/shape/gf_button_shape.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:page_transition/page_transition.dart';
import 'package:flutter_sizer/flutter_sizer.dart';
import 'package:rounded_loading_button_plus/rounded_loading_button.dart';

class InviteFriend extends StatefulWidget {
  const InviteFriend({super.key});

  @override
  State<InviteFriend> createState() => _InviteFriendState();
}

class _InviteFriendState extends State<InviteFriend> {
  final RoundedLoadingButtonController _profileSetupbtnController =
      RoundedLoadingButtonController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(60),
        child: AppBar(
          elevation: 0,
          centerTitle: true,
          backgroundColor: Colors.white,
          title: Container(
            width: 15.w,
            height: 15.h,
            child: Image.asset(
              "assets/images/logo.png",
              filterQuality: FilterQuality.high,
            ),
          ),
          leading: null,
          actions:  [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 15),
              child: GestureDetector(
                onTap: () {
                   Navigator.push(context, PageTransition(type: PageTransitionType.rightToLeft, child: AcceptInvitation()));
                },
                child: Icon(
                  Icons.person,
                  color: Colors.black,
                  size: 40.sp,
                ),
              ),
            )
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              alignment: Alignment.center,
              height: 8.h,
              width: double.infinity,
              decoration:
                  const BoxDecoration(color: Color.fromARGB(255, 8, 8, 8)),
              child: Text(
                "Find Your Fixer",
                style: GoogleFonts.poppins(
                    fontSize: 17.sp,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 2,
                    textStyle: const TextStyle(color: Colors.white)),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                      width: 200.w,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: const BorderRadius.all(
                            Radius.circular(20),
                          ),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.3),
                              spreadRadius: 3,
                              blurRadius: 10,
                            )
                          ]),
                      child: TextField(
                        decoration: InputDecoration(
                            contentPadding: EdgeInsets.symmetric(
                                vertical: 25, horizontal: 25),
                            hintText:
                                "Hi Kashaf! please enter the exact username",
                            hintStyle: TextStyle(
                              color: Colors.grey,
                              fontFamily: "Nunito",
                              fontWeight: FontWeight.w500,
                              fontSize: 15.sp,
                            ),
                            border: InputBorder.none,
                            enabledBorder: InputBorder.none,
                            errorBorder: InputBorder.none,
                            disabledBorder: InputBorder.none),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Container(
                      height: 13.h,
                      width: 12.w,
                      decoration: BoxDecoration(
                          color: Colors.orange[900],
                          shape: BoxShape.circle,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.3),
                              spreadRadius: 3,
                              blurRadius: 10,
                            ),
                          ]),
                      child: const Icon(
                        Icons.search,
                        color: Colors.white,
                      ))
                ],
              ),
            ),
            //const Spacer(),
            const SizedBox(
              height: 10,
            ),
            
            SizedBox(
              height: 400,
              width: 400,
              child: Image.asset("assets/images/fixer.jpg"),
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              //backslash \n is
              "Find skilled Fixans \nfor all your home needs",
              style: GoogleFonts.poppins(
                fontSize: 15.sp,
                color: Colors.grey,
                fontWeight: FontWeight.w500,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              width: 250,
              child: Hero(
                tag: "Auth",
                child: RoundedLoadingButton(
                  controller: _profileSetupbtnController,
                  onPressed: () {
                    Timer(Duration(seconds: 3), () {
                      _profileSetupbtnController.success();
                      Navigator.push(
                          context,
                          PageTransition(
                              type: PageTransitionType.fade,
                              child: HomePage()));
                    });
                  },
                  child: Text(
                    "HomePage",
                    style: GoogleFonts.poppins(
                        fontSize: 16.sp,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                  color: Colors.orange[900],
                  width: 2000.w,
                  borderRadius: 10,
                ),
              ),
            ),
            // ElevatedButton(
            //   style: ButtonStyle(
            //     backgroundColor: MaterialStateProperty.all(Colors.orange[900]),
            //     shape: MaterialStateProperty.all(
            //       RoundedRectangleBorder(
            //           borderRadius: BorderRadius.circular(20)),
            //     ),
            //     minimumSize: MaterialStateProperty.all(Size(150, 50)),
            //   ),
            //   onPressed: () {},
            //   child: Text(
            //     "Find a fixer",
            //     style: GoogleFonts.poppins(
            //       fontSize: 20.sp,
            //       color: Colors.white,
            //       fontWeight: FontWeight.w500,
            //     ),
            //   ),
            // ),
            const SizedBox(
              height: 50,
            ),
          ],
        ),
      ),
    );
  }
}
