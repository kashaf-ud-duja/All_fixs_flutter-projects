import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
class TopBanner extends StatelessWidget {
 final String title;
 final List<Color> clr;

TopBanner({required this.clr,required this.title});
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment:Alignment.center,
        height: 50,
        width: double.infinity,
        decoration:  BoxDecoration(
          gradient: LinearGradient(
            colors: clr,
          ),
        ),
        child: Text(
          
          title,
          style: GoogleFonts.nunito(
              fontWeight: FontWeight.bold,
              fontSize: 20,
              color: Colors.white,
              letterSpacing: 1),
        ));
  }
}
