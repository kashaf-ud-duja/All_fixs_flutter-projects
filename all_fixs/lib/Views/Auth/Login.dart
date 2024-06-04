import 'dart:async';
import 'package:all_fixs/Controller/User%20Controller/user_controller.dart';
import 'package:all_fixs/Interfaces/Auth/login_services.dart';
import 'package:all_fixs/Views/Auth/Forget_Password.dart';
import 'package:all_fixs/Views/Auth/Register.dart';
import 'package:all_fixs/Views/Profile/profile_setup.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:page_transition/page_transition.dart';
import 'package:rounded_loading_button_plus/rounded_loading_button.dart';
import 'package:all_fixs/Views/Widgets/Auth/auth_heading.dart';
import 'package:all_fixs/Views/Widgets/Auth/auth_text_field.dart';
import 'package:flutter_sizer/flutter_sizer.dart';

class logIn extends StatelessWidget {
  final RoundedLoadingButtonController _loginbtnController =
      RoundedLoadingButtonController();
final LoginServices loginservices = LoginServices();
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
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              new AuthHeading(
                mainText: "Sign in to All Fixs",
                subText: "your one stop solution",
                logo: "assets/images/logo.png",
                logoSize: 130,
                fontSize: 15.sp,
              ),
              const SizedBox(
                height: 50,
              ),
              AuthTextField(
                  icon: Icons.alternate_email,
                  keyboardType: TextInputType.emailAddress,
                  labelText: "abc@gmail.com",
                  obscureText: false,
                  fontSize: 16.sp,
                  iconsize: 16.sp,
                  labelSize: 16.sp, controller: loginservices.emailcontroller,),
              const SizedBox(height: 15),
              AuthTextField(
                  icon: Icons.password_outlined,
                  keyboardType: TextInputType.visiblePassword,
                  labelText: "Password",
                  obscureText: true,
                  fontSize: 16.sp,
                  iconsize: 16.sp,
                  labelSize: 16.sp, controller:  loginservices.passwordcontroller,),
              const SizedBox(height: 15),
              Hero(
                tag: "Auth",
                child: RoundedLoadingButton(
                  controller: _loginbtnController,
                  onPressed: () {
                    UserController().loginUser(loginservices.emailcontroller.text, loginservices.passwordcontroller.text);
                    Timer(Duration(seconds: 3), () {
                      _loginbtnController.success();
                      Navigator.push(
                          context,
                          PageTransition(
                              type: PageTransitionType.fade,
                              child: ProfileSetup()));
                    });
                  },
                  child: Text(
                    "Login",
                    style: GoogleFonts.poppins(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Colors.black),
                  ),
                  color: Colors.orange[900],
                  width: 2000.w,
                  borderRadius: 10,
                ),
              ),
              const SizedBox(height: 15),
              Container(
                  alignment: Alignment.centerLeft,
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          PageTransition(
                              type: PageTransitionType.fade,
                              child: ForgetPassword()));
                    },
                    child: Text(
                      "Forget Password?",
                      style: GoogleFonts.poppins(
                          fontSize: 12, color: Colors.red[700]),
                    ),
                  )),
              const SizedBox(height: 25),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("don't have an account?",
                      style: GoogleFonts.poppins(
                          fontSize: 12, color: Colors.black87)),
                  GestureDetector(
                    onTap: () {
                      Navigator.pushReplacement(
                          context,
                          PageTransition(
                              type: PageTransitionType.fade,
                              child: Register()));
                    },
                    child: Text("Sign up",
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
