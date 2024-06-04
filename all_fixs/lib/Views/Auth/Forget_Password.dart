import 'package:all_fixs/Interfaces/Auth/forgot_pasword_services.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:rounded_loading_button_plus/rounded_loading_button.dart';
//import 'package:rounded_loading_button/rounded_loading_button.dart';
import 'package:all_fixs/Views/Widgets/Auth/auth_heading.dart';
import 'package:all_fixs/Views/Widgets/Auth/auth_text_field.dart';
import 'package:flutter_sizer/flutter_sizer.dart';

class ForgetPassword extends StatelessWidget {
  final RoundedLoadingButtonController _forgetpasswordbtnController =
      RoundedLoadingButtonController();
      final ForgotPaswordServices forgotpaswordservices = ForgotPaswordServices();
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
        child: Container(
          padding: const EdgeInsets.all(30),
          child: Column(
            children: [
              const SizedBox(
                height: 30,
              ),
              AuthHeading(
                fontSize: 10.sp,
                logo: "assets/images/1.jpg",
                logoSize: 80.sp,
                mainText: "Forget Password",
                subText:
                    "please enter the following details if you have forgot your password",
              ),
              const SizedBox(
                height: 30,
              ),
              AuthTextField(
                  icon: Icons.alternate_email,
                  keyboardType: TextInputType.emailAddress,
                  labelText: "enter your mail",
                  obscureText: false,
                  fontSize: 20.sp,
                  iconsize: 12.sp,
                  labelSize: 12.sp, controller: forgotpaswordservices.emailcontroller,),
                  const SizedBox(
                height: 30,
              ),
                  Text("to request for a new password,type your email address and the passsword will be sent to that mail",
                      style: GoogleFonts.poppins(
                          fontSize: 10.sp, color: Colors.black87,),
                          textAlign:TextAlign.center ,),
                          const SizedBox(
                height: 30,
              ),
              Hero(
                tag: "Auth",
                child: RoundedLoadingButton(
                  controller: _forgetpasswordbtnController,
                  onPressed: () {},
                  child: Text(
                    "Reset Password",
                    style: GoogleFonts.poppins(fontSize: 16,fontWeight: FontWeight.bold,color: Colors.black),
                  ),
                  color: Colors.orange[900],
                  width: 2000.w,
                  borderRadius: 10,
                ),
              ),
            ],
            
            
          ),
          
        ),
      ),
    );
  }
}
