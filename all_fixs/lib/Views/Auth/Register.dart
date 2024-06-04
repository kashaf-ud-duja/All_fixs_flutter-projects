import 'dart:async';
import 'package:achievement_view/achievement_view.dart';
import 'package:all_fixs/Controller/User%20Controller/user_controller.dart';
import 'package:all_fixs/Interfaces/Auth/register_services.dart';
import 'package:all_fixs/Views/Auth/Login.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:page_transition/page_transition.dart';
import 'package:rounded_loading_button_plus/rounded_loading_button.dart';
import '../Widgets/Auth/auth_heading.dart';
import '../Widgets/Auth/auth_text_field.dart';
import 'package:flutter_sizer/flutter_sizer.dart';

class Register extends StatelessWidget {
  final RoundedLoadingButtonController _registerbtnController =
      RoundedLoadingButtonController();
  final RegisterServices registerServices = RegisterServices();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "ALL FIXS",
          style: GoogleFonts.poppins(
              fontWeight: FontWeight.bold, color: Colors.white),
        ),
        // backgroundColor: Color.fromRGBO(230, 81, 0, 1),
        flexibleSpace: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: <Color>[
                Color(0xFFFFA726),
                Color(0xFFE65100),
              ],
            ),
          ),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(30),
          child: Column(
            children: [
              AuthHeading(
                mainText: "Sign Up to All Fixs",
                subText: "your one stop solution",
                logo: "assets/images/logo.png",
                logoSize: 52.sp,
                fontSize: 15.sp,
              ),
              const SizedBox(
                height: 30,
              ),
              AuthTextField(
                icon: Icons.alternate_email,
                keyboardType: TextInputType.emailAddress,
                labelText: "abc@gmail.com",
                obscureText: false,
                fontSize: 16.sp,
                iconsize: 16.sp,
                labelSize: 16.sp,
                controller: registerServices.emailcontroller,
              ),
              const SizedBox(height: 15),
              AuthTextField(
                icon: Icons.password_outlined,
                keyboardType: TextInputType.visiblePassword,
                labelText: "Password",
                obscureText: true,
                fontSize: 16.sp,
                iconsize: 16.sp,
                labelSize: 16.sp,
                controller: registerServices.passwordcontroller,
              ),
              const SizedBox(height: 15),
              AuthTextField(
                icon: Icons.password_outlined,
                keyboardType: TextInputType.visiblePassword,
                labelText: "Confirm Password",
                obscureText: true,
                fontSize: 16.sp,
                iconsize: 16.sp,
                labelSize: 16.sp,
                controller: registerServices.confirmpasscontroller,
              ),
              const SizedBox(height: 15),
              Hero(
                tag: "Auth",
                child: RoundedLoadingButton(
                  controller: _registerbtnController,
                  onPressed: () {
                    if (registerServices.passwordcontroller.text ==
                        registerServices.confirmpasscontroller.text) {
                      UserController().registerUser(
                        registerServices.emailcontroller.text,
                        registerServices.passwordcontroller.text,
                      );
                    } else {
                      AchievementView(
                          title: "Error",
                          subTitle: "passwords didn't match",
                          color: Colors.red,
                          icon: Icon(Icons.insert_emoticon, color: Colors.white,),
                         ).show(context);
                    }

                    Timer(Duration(seconds: 3), () {
                      _registerbtnController.success();
                      Navigator.push(
                          context,
                          PageTransition(
                              type: PageTransitionType.fade, child: logIn()));
                    });
                  },
                  child: Text(
                    "Register",
                    style: GoogleFonts.poppins(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                  color: Colors.orange[900],
                  width: 2000.w,
                  borderRadius: 10,
                ),
              ),
              const SizedBox(height: 15),
              Container(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "by registering you are agree to our terms and condition",
                    style: GoogleFonts.poppins(
                        fontSize: 9.sp,
                        color: Colors.grey[500],
                        fontWeight: FontWeight.w500),
                  )),
              const SizedBox(height: 25),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("If you are already registered?then,",
                      style: GoogleFonts.poppins(
                          fontSize: 12.sp, color: Colors.black87)),
                  GestureDetector(
                    onTap: () {
                      Navigator.pushReplacement(
                          context,
                          PageTransition(
                              type: PageTransitionType.fade, child: logIn()));
                    },
                    child: Text("Sign In",
                        style: GoogleFonts.poppins(
                            fontWeight: FontWeight.bold,
                            fontSize: 13.sp,
                            color: Colors.lightBlueAccent[700])),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
