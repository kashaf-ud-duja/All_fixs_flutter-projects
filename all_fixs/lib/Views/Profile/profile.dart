import "package:flutter/material.dart";
import "package:google_fonts/google_fonts.dart";

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 10,),
        Text(
          "My Profile",
          style: GoogleFonts.bodoniModa(
              fontSize: 30,
              color: Colors.orange[900],
              fontWeight: FontWeight.bold,
              letterSpacing: 1),
        ),
        Container(
          
        )
      ],
    );
  }
}
