import "package:all_fixs/Views/Widgets/Auth/auth_text_field.dart";
import "package:all_fixs/Views/Widgets/Homepage/card_detail_view.dart";
import "package:circular_profile_avatar/circular_profile_avatar.dart";
import "package:flutter/material.dart";
import "package:flutter/widgets.dart";
import "package:flutter_sizer/flutter_sizer.dart";
import "package:google_fonts/google_fonts.dart";

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  bool more = false;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
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
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              children: [
                CardDetailView(
                    clr: const Color.fromRGBO(224, 224, 224, 1),
                    icons: Icon(Icons.alternate_email),
                    type: "Email Address",
                    value: "Value not currently set"),
                CardDetailView(
                    clr: Colors.transparent,
                    icons: Icon(Icons.map),
                    type: "Country",
                    value: "Pakistan"),
                CardDetailView(
                    clr: const Color.fromRGBO(224, 224, 224, 1),
                    icons: Icon(Icons.phone),
                    type: "Phone Number",
                    value: "O300-123456"),
                more
                    ? CardDetailView(
                        clr: Colors.transparent,
                        icons: Icon(Icons.gesture_sharp),
                        type: "Gender",
                        value: "Female")
                    : Container(),
                more
                    ? CardDetailView(
                        clr: const Color.fromRGBO(224, 224, 224, 1),
                        icons: Icon(Icons.people),
                        type: "Partner",
                        value: "Noor ul huda")
                    : Container(),
                more
                    ? CardDetailView(
                        clr: Colors.transparent,
                        icons: Icon(Icons.fingerprint),
                        type: "UID",
                        value: "FJEOIRJGREOG2563452")
                    : Container(),
                more
                    ? CardDetailView(
                        clr: const Color.fromRGBO(224, 224, 224, 1),
                        icons: Icon(Icons.lock_clock_outlined),
                        type: "Account Created",
                        value: "3-JULY-2024")
                    : Container(),
                SizedBox(
                  height: 20,
                ),
                ElevatedButton(
                  style: ButtonStyle(
                    side: MaterialStateProperty.all(
                      BorderSide(
                        color: Colors.grey,
                      ),
                    ),
                    backgroundColor:
                        MaterialStateProperty.all(Colors.grey[300]),
                    shape: MaterialStateProperty.all(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                    minimumSize: MaterialStateProperty.all(Size(150, 50)),
                  ),
                  onPressed: () {
                    setState(() {
                      more = !more;
                    });
                  },
                  child: Text(
                    more ? "- Show Less" : "+ Show More",
                    style: GoogleFonts.poppins(
                      fontSize: 14.sp,
                      color: Colors.black,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      height: 150,
                      width: 150,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(40),
                          gradient: LinearGradient(colors: [
                            const Color.fromRGBO(255, 183, 77, 1),
                            const Color.fromRGBO(236, 64, 122, 1)
                          ])),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Text(
                            "Subscribed to",
                            style: GoogleFonts.nunito(
                                color: Colors.white,
                                fontSize: 15,
                                fontWeight: FontWeight.bold),
                          ),
                          Text(
                            "Premium",
                            style: GoogleFonts.nunito(
                                color: Colors.white,
                                fontSize: 14,
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      height: 150,
                      width: 150,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          gradient: LinearGradient(colors: [
                            const Color.fromRGBO(144, 202, 249, 1),
                            const Color.fromRGBO(66, 165, 245, 1),
                          ])),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Text(
                            "Subscribed On",
                            style: GoogleFonts.nunito(
                                color: Colors.white,
                                fontSize: 15,
                                fontWeight: FontWeight.bold),
                          ),
                          Text(
                            "N/A",
                            style: GoogleFonts.nunito(
                                color: Colors.white,
                                fontSize: 14,
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
          SizedBox(
            height: 20,
          )
        ],
      ),
    );
  }
}
