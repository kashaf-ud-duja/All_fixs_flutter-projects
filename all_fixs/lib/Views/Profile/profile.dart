import "package:all_fixs/Views/Widgets/Auth/auth_text_field.dart";
import "package:all_fixs/Views/Widgets/Homepage/card_detail_view.dart";
import "package:circular_profile_avatar/circular_profile_avatar.dart";
import "package:flutter/material.dart";
import "package:flutter/widgets.dart";
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
                textStyle: const TextStyle(color: Colors.white),
              ),
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
        SizedBox(
          height: 20,
        ),
        ElevatedButton(
          style: ButtonStyle(
            side: MaterialStateProperty.all(
              BorderSide(
                color: const Color.fromRGBO(230, 81, 0, 1),
              ),
            ),
            backgroundColor: MaterialStateProperty.all(Colors.white),
            shape: MaterialStateProperty.all(
              RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
            ),
            minimumSize: MaterialStateProperty.all(Size(150, 50)),
          ),
          onPressed: () {},
          child: Text(
            "Edit Profile Details",
            style: GoogleFonts.poppins(
              fontSize: 20.sp,
              color: Colors.orange[900],
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
        SizedBox(
          height: 20,
        ),
        Container(
          child: Column(
            children: [
              CardDetailView(
                  clr: const Color.fromRGBO(230, 81, 0, 1),
                  icons: Icon(Icons.alternate_email),
                  type: "Email Address",
                  value: "tahirkashaf@gmail.com")
            ],
          ),
        )
      ],
    );
  }
}
