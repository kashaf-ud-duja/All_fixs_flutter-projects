import "package:circular_profile_avatar/circular_profile_avatar.dart";
import "package:flutter/material.dart";
import "package:flutter_sizer/flutter_sizer.dart";
import "package:google_fonts/google_fonts.dart";

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 10,
        ),
        Text(
          "My Profile",
          style: GoogleFonts.bodoniModa(
              fontSize: 30,
              color: Colors.orange[900],
              fontWeight: FontWeight.bold,
              letterSpacing: 1),
        ),
        SizedBox(
          height: 10,
        ),
        Container(
          width: double.infinity,
          alignment: Alignment.center,
          decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/images/doodle3.png"),
                fit: BoxFit.fill),
          ),
          child: CircularProfileAvatar(
            '',
            radius: 80,
            backgroundColor: Colors.grey,
            borderWidth: 10,
            initialsText: Text(
              "+",
              style: GoogleFonts.poppins(
                  fontSize: 16.sp,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 2,
                  textStyle: const TextStyle(color: Colors.white)),
            ),
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Text(
          "Kashaf ud duja",
          style: GoogleFonts.poppins(
              fontSize: 18, fontWeight: FontWeight.w500, color: Colors.black),
        ),
        Text(
          "Kashaf_Tahir7",
          style: GoogleFonts.poppins(
              fontSize: 12, fontWeight: FontWeight.w500, color: Colors.grey),
        ),
        SizedBox(height: 20,),
        ElevatedButton(
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.grey[900]),
                shape: MaterialStateProperty.all(
                  RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20)),
                ),
                minimumSize: MaterialStateProperty.all(Size(150, 50)),
              ),
              onPressed: () {},
              child: Text(
                "Edit Profile",
                style: GoogleFonts.poppins(
                  fontSize: 20.sp,
                  color: Colors.white,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
      ],
    );
  }
}
