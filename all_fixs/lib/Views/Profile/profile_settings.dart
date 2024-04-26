import "package:all_fixs/Views/Widgets/Profile/profile_setting_heading.dart";
import "package:circular_profile_avatar/circular_profile_avatar.dart";
import "package:flutter/material.dart";
import "package:flutter_sizer/flutter_sizer.dart";
import "package:google_fonts/google_fonts.dart";

class ProfileSettings extends StatelessWidget {
  const ProfileSettings({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Stack(
          children: [
            Container(
              height: 300,
              decoration: BoxDecoration(
                color: Colors.orange[900],
                borderRadius: BorderRadius.vertical(
                  bottom:
                      //mediaquery will calculate the width of the device and calculating how much beval we gonna apply on that device
                      Radius.elliptical(MediaQuery.of(context).size.width, 150),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.0),
              child: Column(
                children: [
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.settings,
                        color: Colors.white,
                        size: 23,
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Text(
                        "Settings",
                        textAlign: TextAlign.left,
                        style: GoogleFonts.poppins(
                            color: Colors.white,
                            fontSize: 23,
                            fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(20),
                      ),
                    ),
                    child: Container(
                      child: Column(
                        children: [
                          Container(
                            padding: EdgeInsets.symmetric(
                                horizontal: 10, vertical: 10),
                            child: Row(
                              children: [
                                CircularProfileAvatar(
                                  '',
                                  radius: 30,
                                  backgroundColor: Colors.white,
                                  borderWidth: 2,
                                  borderColor: Colors.grey,
                                  elevation: 5.0,
                                  errorWidget: (context, url, error) {
                                    return Icon(
                                      Icons.face,
                                      size: 20,
                                    );
                                  },
                                  cacheImage: true,
                                  onTap: () async {},
                                  animateFromOldImageOnUrlChange: true,
                                  placeHolder: (context, url) {
                                    return Container(
                                      child: Center(
                                        child: CircularProgressIndicator(),
                                      ),
                                    );
                                  },
                                ),
                                const SizedBox(
                                  width: 10,
                                ),
                                Text(
                                  "Kashaf ud duja",
                                  textAlign: TextAlign.left,
                                  style: GoogleFonts.nunito(
                                      color: Colors.black,
                                      fontSize: 15,
                                      letterSpacing: 2,
                                      fontWeight: FontWeight.w900),
                                )
                              ],
                            ),
                          ),
                          Divider(
                            color: Colors.grey,
                          ),
                          const SizedBox(
                            height: 30,
                          ),
                          ProfileSettingHeading(heading: "Profile Setting"),
                          const SizedBox(
                            height: 15,
                          ),
                          
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
