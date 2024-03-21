import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AuthHeading extends StatelessWidget {
  final String mainText;
  final String subText;
  final String logo;
  final double fontSize;
  final double logoSize;

  AuthHeading(
      {required this.fontSize,
      required this.logo,
      required this.logoSize,
      required this.mainText,
      required this.subText});
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
                width: logoSize,
                height: logoSize,
                child: Image.asset(
                  logo,
                  filterQuality: FilterQuality.high,
                ))
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              mainText,
              style: GoogleFonts.poppins(
                  fontWeight: FontWeight.bold, fontSize: fontSize),
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              subText,
              style: GoogleFonts.poppins(fontSize: fontSize),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ],
    );
  }
}
