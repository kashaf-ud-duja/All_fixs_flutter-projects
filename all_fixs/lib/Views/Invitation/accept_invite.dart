import 'package:circular_profile_avatar/circular_profile_avatar.dart';
import "package:flutter/material.dart";
import 'package:google_fonts/google_fonts.dart';
import 'package:page_transition/page_transition.dart';
import 'package:flutter_sizer/flutter_sizer.dart';
class AcceptInvitation extends StatelessWidget {
  const AcceptInvitation({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(60),
        child: AppBar(
          elevation: 0,
          centerTitle: true,
          backgroundColor: Colors.white,
          title: SizedBox(
            width: 100,
            height: 100,
            child: Image.asset(
              "assets/images/logo.png",
              filterQuality: FilterQuality.high,
            ),
          ),
          leading:  GestureDetector(
            onTap: () {
              Navigator.of(context).pop();
            },
            child: Icon(Icons.arrow_back,color: Colors.black,)),
          
        ),
      ),
      body: SingleChildScrollView(
        child: Column(children: [
          Container(
            alignment: Alignment.center,
            height: 50,
            width: double.infinity,
            decoration: const BoxDecoration(color: Color.fromARGB(255, 8, 8, 8)),
            child: Text(
              "Recieved Work Requests",
              style: GoogleFonts.poppins(
                  fontSize: 16.sp,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 3,
                  textStyle: const TextStyle(color: Colors.white)),
            ),
          ),
          SizedBox(
      width: 20,
          ),
          Container(
                width: double.infinity,
                child: Card(
                  elevation: 10,
                  shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(20.0),
                    ),
                  ),
                  child: Container(
                    height: 18.h,
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.fromLTRB(10, 20, 5, 15),
                              child: Container(
                                width: 8.w,
                                height: 8.h,
                                child: CircularProfileAvatar(
                                  "",
                                  backgroundColor: Colors.black,
                                  radius: 31,
                                ),
                              ),
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: <Widget>[
                                Padding(
                                  padding:
                                      const EdgeInsets.only(top: 5, bottom: 5),
                                  child: Text("@Kashaf_tahir",
                                      style: GoogleFonts.poppins(fontSize: 17)),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 0.0),
                                  child: Text("Kashaf",
                                      style: GoogleFonts.poppins(
                                          color: Colors.grey)),
                                )
                              ],
                            ),
                            const Spacer(),
                            Row(
                              children: [
                                Padding(
                                  padding:
                                      const EdgeInsets.symmetric(horizontal: 10),
                                  child: ElevatedButton(
                                    style: ButtonStyle(
                                      backgroundColor:
                                          MaterialStateProperty.all(Colors.green),
                                      shape: MaterialStateProperty.all(
                                        RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(10)),
                                      ),
                                      minimumSize: MaterialStateProperty.all(
                                          Size(130, 40)),
                                    ),
                                    onPressed: () {},
                                    child: Text(
                                      "Accept",
                                      style: GoogleFonts.poppins(
                                        fontSize: 15,
                                        color: Colors.white,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsets.symmetric(horizontal: 5),
                                  child: ElevatedButton(
                                    style: ButtonStyle(
                                      backgroundColor:
                                          MaterialStateProperty.all(Colors.red),
                                      shape: MaterialStateProperty.all(
                                        RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(10)),
                                      ),
                                      minimumSize: MaterialStateProperty.all(
                                          Size(130, 40)),
                                    ),
                                    onPressed: () {},
                                    child: Text(
                                      "Decline",
                                      style: GoogleFonts.poppins(
                                        fontSize: 15.sp,
                                        color: Colors.white,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
          const SizedBox(
            height: 50,
          ),
          Container(
            alignment: Alignment.center,
            child: Image.asset("assets/images/find.jpg"),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Your Recieved Work requests are currently ",
                style: GoogleFonts.poppins(
                    fontSize: 12.sp,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 1,
                    textStyle: const TextStyle(color: Colors.black)),
              ),
              Text(
                "empty",
                style: GoogleFonts.poppins(
                    fontSize: 12.sp,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 1,
                    textStyle: const TextStyle(color: Colors.orange)),
              ),
            ],
          ),
        ]),
      ),
    );
  }
}
