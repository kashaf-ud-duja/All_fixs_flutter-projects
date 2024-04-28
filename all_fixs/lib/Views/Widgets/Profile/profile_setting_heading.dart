import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ProfileSettingHeading extends StatelessWidget {
  final String heading;
  ProfileSettingHeading({required this.heading});
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 50),
      alignment: Alignment.center,
      child: Text(
        heading,
        textScaleFactor: 1,
        textAlign: TextAlign.left,
        style: GoogleFonts.nunito(
            color: Colors.orange[900],
            fontSize: 16,
            fontWeight: FontWeight.bold),
      ),
    );
  }
}
