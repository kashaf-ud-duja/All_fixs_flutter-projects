import "package:all_fixs/Views/Widgets/Profile/profile_setting_heading.dart";
import "package:all_fixs/Views/Widgets/Profile/profile_setting_sub_heading.dart";
import "package:circular_profile_avatar/circular_profile_avatar.dart";
import "package:flutter/material.dart";
import "package:flutter_sizer/flutter_sizer.dart";
import "package:google_fonts/google_fonts.dart";
import 'package:getwidget/getwidget.dart';

class ProfileSettings extends StatelessWidget {
  const ProfileSettings({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          child: Stack(
            children: [
              Container(
                height: 300,
                decoration: BoxDecoration(
                  color: Colors.orange[900],
                  borderRadius: BorderRadius.vertical(
                    bottom:
                        //mediaquery will calculate the width of the device and calculating how much beval we gonna apply on that device
                        Radius.elliptical(
                            MediaQuery.of(context).size.width, 150),
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
                                  horizontal: 20, vertical: 10),
                              child: Row(
                                children: [
                                  CircularProfileAvatar(
                                    '',
                                    radius: 30,
                                    backgroundColor:
                                        const Color.fromRGBO(230, 81, 0, 1),
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
                              height: 15,
                            ),
                            ProfileSettingHeading(heading: "Profile Setting"),
                            const SizedBox(
                              height: 15,
                            ),
                            ProfileSettingSubHeading(
                              subheading: "Edit Name",
                            ),
                            ProfileSettingSubHeading(
                                subheading: "Edit Phone Number"),
                            ProfileSettingSubHeading(
                                subheading: "Change Password"),
                            ProfileSettingSubHeading(
                              subheading: "Email Status",
                              secondarywidget: Row(
                                children: [
                                  Text(
                                    "Not Verified",
                                    style: GoogleFonts.nunito(
                                        color: Colors.red,
                                        fontWeight: FontWeight.w600),
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Icon(
                                    Icons.arrow_forward,
                                    size: 25,
                                    weight: 900,
                                  ),
                                ],
                              ),
                            ),
                            const SizedBox(
                              height: 15,
                            ),
                            ProfileSettingHeading(
                                heading: "Notification Settings"),
                            const SizedBox(
                              height: 15,
                            ),
                            ProfileSettingSubHeading(
                              subheading: "Push Notifications",
                              secondarywidget: GFToggle(
                                onChanged: (val) {},
                                value: true,
                                enabledTrackColor: Colors.green,
                                type: GFToggleType.android,
                              ),
                            ),
                            const SizedBox(
                              height: 15,
                            ),
                            ProfileSettingHeading(
                                heading: "Application Settings"),
                            const SizedBox(
                              height: 15,
                            ),
                            ProfileSettingSubHeading(
                              subheading: "Background Updates",
                              secondarywidget: Row(
                                children: [
                                  Text(
                                    "Not Allowed",
                                    style: GoogleFonts.nunito(
                                        color: Colors.red,
                                        fontWeight: FontWeight.w600),
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Icon(
                                    Icons.arrow_forward,
                                    size: 25,
                                    weight: 900,
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 20,
                            )
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
      ),
    );
  }
}
