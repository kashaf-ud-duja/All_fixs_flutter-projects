import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
class TopBanner extends StatelessWidget {
  const TopBanner({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment:Alignment.center,
        height: 50,
        width: double.infinity,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [Color(0xFFFFB74D), Color(0xFFFB8C00)],
          ),
        ),
        child: Text(
          
          "Device Info",
          style: GoogleFonts.nunito(
              fontWeight: FontWeight.w500,
              fontSize: 20,
              color: Colors.black,
              letterSpacing: 1),
        ));
  }
}
