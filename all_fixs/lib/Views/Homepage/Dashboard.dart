import 'package:circular_profile_avatar/circular_profile_avatar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';

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
              style: GoogleFonts.poppins(
                  color: Colors.orange[900],
                  fontWeight: FontWeight.bold,
                  fontSize: 25),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            padding: EdgeInsets.only(left: 25),
            alignment: Alignment.centerLeft,
            child: Text(
              "Hired Fixians",
              style: GoogleFonts.poppins(
                  color: Colors.black,
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 2),
            ),
          ),
          Container(
            padding: EdgeInsets.all(25),
            width: double.infinity,
            child: Card(
              color: Colors.grey[300],
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
                            child: Column(
                          children: [
                            Row(
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
                            Row(
                              children: [
                                Icon(
                                  Icons.location_on_sharp,
                                  color: Colors.black,
                                  size: 15,
                                ),
                                SizedBox(
                                  width: 14,
                                ),
                                Text(
                                  "Crescent textile mills faisalabad",
                                  style: GoogleFonts.poppins(
                                      fontSize: 10,
                                      fontWeight: FontWeight.normal),
                                )
                              ],
                            ),
                          ],
                        ))
                      ],
                    ),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
