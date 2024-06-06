import 'dart:ui';

import 'package:all_fixs/Views/Features/Album/my_album.dart';
import 'package:all_fixs/Views/Features/DeviceInfo/device_info.dart';
import 'package:all_fixs/Views/Homepage/home_page.dart';
import 'package:all_fixs/Views/Invitation/accept_invite.dart';
import 'package:all_fixs/Views/Widgets/Dashboard/dashboard_gradient_feature.dart';
import 'package:circular_profile_avatar/circular_profile_avatar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:page_transition/page_transition.dart';

class DashBoard extends StatelessWidget {
  const DashBoard({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Container(
            alignment: Alignment.center,
            child: Text(
              "Dashboard",
              style: GoogleFonts.nunito(
                  color: Colors.orange[900],
                  fontWeight: FontWeight.bold,
                  fontSize: 30),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 15),
            alignment: Alignment.centerLeft,
            child: Text(
              "Hired Fixians",
              style: GoogleFonts.nunito(
                  color: Colors.black,
                  fontSize: 20,
                  fontWeight: FontWeight.w900,
                  letterSpacing: 1),
            ),
          ),
          Container(
            padding: EdgeInsets.all(25),
            width: double.infinity,
            child: Card(
              elevation: 10,
              color: Colors.grey[200],
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30),
              ),
              child: Container(
                decoration:
                    BoxDecoration(borderRadius: BorderRadius.circular(40)),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Container(
                          padding: EdgeInsets.symmetric(
                              horizontal: 25, vertical: 25),
                          child: CircularProfileAvatar(
                            "",
                            backgroundColor: Colors.yellow,
                            borderWidth: 1,
                            borderColor: Colors.black,
                            elevation: 20,
                            radius: 40,
                            cacheImage: true,
                            errorWidget: (context, url, error) {
                              return const Icon(
                                Icons.face,
                                size: 50,
                              );
                            },
                            onTap: () {},
                            animateFromOldImageOnUrlChange: true,
                            placeHolder: (context, url) {
                              return Container(
                                  child: const Center(
                                child: CircularProgressIndicator(),
                              ));
                            },
                          ),
                        ),
                        Flexible(
                            child: Padding(
                          padding: const EdgeInsets.only(right: 30.0),
                          child: Column(
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Icon(
                                    Icons.fiber_manual_record,
                                    color: Colors.black,
                                    size: 15,
                                  ),
                                  SizedBox(
                                    width: 14,
                                  ),
                                  Text(
                                    "Kashaf ud duja",
                                    style: GoogleFonts.poppins(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w800),
                                  )
                                ],
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Icon(
                                    Icons.location_on_sharp,
                                    color: Colors.black,
                                    size: 15,
                                  ),
                                  SizedBox(
                                    width: 14,
                                  ),
                                  Expanded(
                                    child: Text(
                                      "Crescent textile mills faisalabad,HOUSE#SA 2 near gourmet bakery",
                                      style: GoogleFonts.poppins(
                                          fontSize: 10,
                                          fontWeight: FontWeight.normal),
                                    ),
                                  )
                                ],
                              ),
                            ],
                          ),
                        ))
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 20.0),
                          child: Flexible(
                              child: Column(
                            children: [
                              Text(
                                "Status",
                                style: GoogleFonts.nunito(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.black),
                              ),
                              Text(
                                "Online",
                                style: GoogleFonts.nunito(
                                    fontSize: 12,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.green[500]),
                              ),
                            ],
                          )),
                        ),
                        SizedBox(
                          height: 30,
                          width: 2,
                          child: Container(
                            color: Colors.grey,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 20.0),
                          child: Flexible(
                              child: Column(
                            children: [
                              Text(
                                "User Status",
                                style: GoogleFonts.nunito(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.black),
                              ),
                              Text(
                                "N/A",
                                style: GoogleFonts.nunito(
                                    fontSize: 12,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.red[500]),
                              ),
                            ],
                          )),
                        ),
                        SizedBox(
                          height: 30,
                          width: 2,
                          child: Container(
                            color: Colors.grey,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 20.0),
                          child: Flexible(
                            child: Text(
                              "Mood N/A",
                              style: GoogleFonts.nunito(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.black),
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                  ],
                ),
              ),
            ),
          ),
          Row(
            children: [
 Flexible(
                    child: DashboardGradientFeature(
                  Iconimage: "assets/dashboard/phone.png",
                  buttontext: "Device info",
                  clr: [
                    const Color.fromRGBO(129, 199, 132, 1),
                    Color.fromARGB(255, 56, 142, 60)
                  ],
                )
              ),

Flexible(
                    child: DashboardGradientFeature(
                  Iconimage: "assets/dashboard/blackgallery.png",
                  buttontext: "Gallery",
                  clr: [Colors.yellow, const Color.fromRGBO(251, 192, 45, 1)],
                )),

              Flexible(
                  child: DashboardGradientFeature(
                Iconimage: "assets/dashboard/blacksmile.png",
                buttontext: "Mood",
                clr: [
                  const Color.fromRGBO(186, 104, 200, 1),
                  const Color.fromRGBO(106, 27, 154, 1)
                ],
              )),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15.0),
            child: Container(
              alignment: Alignment.centerLeft,
              child: Text(
                "Our Features",
                textAlign: TextAlign.left,
                style: GoogleFonts.nunito(
                    fontWeight: FontWeight.w900,
                    fontSize: 20,
                    color: Colors.black,
                    letterSpacing: 1),
              ),
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Row(
              children: [
                Flexible(
                  child: DashboardGradientFeature(
                    Iconimage: "assets/dashboard/fast-forward.png",
                    buttontext: "Playlist",
                    clr: [Colors.white, Colors.white],
                    weight: FontWeight.w900,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Flexible(
                  child: DashboardGradientFeature(
                    Iconimage: "assets/dashboard/placeholder.png",
                    buttontext: "Location",
                    clr: [Colors.white, Colors.white],
                    weight: FontWeight.w900,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Row(
              children: [
                Flexible(
                  child: DashboardGradientFeature(
                    Iconimage: "assets/dashboard/todolist.png",
                    buttontext: "To Do List",
                    clr: [Colors.white, Colors.white],
                    weight: FontWeight.w900,
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Flexible(
                  child: DashboardGradientFeature(
                    Iconimage: "assets/dashboard/diary.png",
                    buttontext: "Diary",
                    clr: [Colors.white, Colors.white],
                    weight: FontWeight.w900,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
           Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Row(
              children: [
                Flexible(
                  child: DashboardGradientFeature(
                    Iconimage: "assets/dashboard/notes.png",
                    buttontext: "Notes",
                    clr: [Colors.white, Colors.white],
                    weight: FontWeight.w900,
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Flexible(
                  child: DashboardGradientFeature(
                    Iconimage: "assets/dashboard/horoscope.png",
                    buttontext: "Horoscope",
                    clr: [Colors.white, Colors.white],
                    weight: FontWeight.w900,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
           Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Row(
              children: [
                Flexible(
                  child: DashboardGradientFeature(
                    Iconimage: "assets/dashboard/sos.png",
                    buttontext: "Emergency SOS",
                    clr: [Colors.white, Colors.white],
                    weight: FontWeight.w900,
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Flexible(
                  child: DashboardGradientFeature(
                    Iconimage: "assets/dashboard/activity.png",
                    buttontext: "Activity",
                    clr: [Colors.white, Colors.white],
                    weight: FontWeight.w900,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 20,)
        ],
      ),
    );
  }
}
