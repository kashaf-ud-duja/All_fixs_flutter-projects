import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:circular_profile_avatar/circular_profile_avatar.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
class GalleryHeader extends StatelessWidget {
  final BuildContext context;
  final String totaluploadvalue;
  final String totalclicks;
  final bool iseditable;
  final String name;
  final String biodescription;

  GalleryHeader({
    required this.name,
    required this.biodescription,
    required this.iseditable,
    required this.context,
    required this.totaluploadvalue,
    required this.totalclicks,
  });
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 350,
      width: double.infinity,
      decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(50),
            bottomRight: Radius.circular(50),
          ),
          boxShadow: [
            BoxShadow(
              color: Color.fromRGBO(158, 158, 158, 1),
              offset: Offset(0.0, 1.0),
              blurRadius: 6.0,
            )
          ]),
      child: Column(
        children: [
          Container(
            height: 250,
            width: double.infinity,
            decoration: const BoxDecoration(
              // color: Color.fromRGBO(230, 81, 0, 1),
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  Color(0xFFFFA726),
                  Color(0xFFE65100),
                ],
              ),
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(60),
                bottomRight: Radius.circular(60),
              ),
              boxShadow: [
                BoxShadow(
                  color: Color.fromRGBO(158, 158, 158, 1),
                  offset: Offset(0.0, 1.0),
                  blurRadius: 6.0,
                ),
              ],
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                const SizedBox(
                  width: 30,
                ),
                Text(
                  "Gallery",
                  style: GoogleFonts.nunito(
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    fontSize: 20,
                  ),
                ),
                CircularProfileAvatar(
                  '',
                  radius: 40,
                  backgroundColor: Colors.black,
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
                Text(
                  name,
                  textAlign: TextAlign.left,
                  style: GoogleFonts.nunito(
                      color: Colors.white,
                      fontSize: 20,
                      letterSpacing: 1,
                      fontWeight: FontWeight.w900),
                ),
                Text(
                  biodescription,
                  textAlign: TextAlign.left,
                  style: GoogleFonts.nunito(
                      color: Colors.black,
                      fontSize: 15,
                      fontWeight: FontWeight.w600),
                ),
              ],
            ),
          ),
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Total Uploads",
                        textAlign: TextAlign.left,
                        style: GoogleFonts.nunito(
                            color: Colors.black,
                            fontSize: 15,
                            letterSpacing: 1,
                            fontWeight: FontWeight.w900),
                      ),
                      Text(
                        totaluploadvalue,
                        textAlign: TextAlign.left,
                        style: GoogleFonts.nunito(
                            color: Colors.orange[900],
                            fontSize: 15,
                            fontWeight: FontWeight.w600),
                      ),
                    ],
                  ),
                ),
                iseditable
                    ? GestureDetector(
                        onTap: () {
                          AwesomeDialog(
                                  context: context,
                                  animType: AnimType.scale,
                                  dialogType: DialogType.noHeader,
                                  body: Center(
                                    child: Padding(
                                      padding: const EdgeInsets.all(20),
                                      child: TextField(
                                        decoration: InputDecoration(
                                          labelText: "Enter Album Description",
                                          labelStyle:
                                              TextStyle(fontFamily: "Nunito"),
                                          fillColor: Colors.black,
                                          enabledBorder: OutlineInputBorder(
                                            borderRadius:
                                                BorderRadius.circular(20),
                                            borderSide:
                                                BorderSide(color: Colors.black),
                                          ),
                                          border: OutlineInputBorder(
                                            borderRadius:
                                                BorderRadius.circular(20),
                                            borderSide: BorderSide(
                                              color: const Color.fromRGBO(
                                                  230, 81, 0, 1),
                                            ),
                                          ),
                                          focusedBorder: OutlineInputBorder(
                                            borderRadius:
                                                BorderRadius.circular(20),
                                            borderSide: BorderSide(
                                              color: Colors.green,
                                            ),
                                          ),
                                        ),
                                        keyboardType: TextInputType.multiline,
                                        maxLines: null,
                                        minLines: 2,
                                      ),
                                    ),
                                  ),
                                  btnOkColor: Colors.orange[900],
                                  btnOkOnPress: () {})
                              .show();
                        },
                        child: Container(
                          height: 60,
                          width: 60,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            gradient: LinearGradient(
                              colors: [
                                Color(0xFFFFA726),
                                Color(0xFFE65100),
                              ],
                            ),
                          ),
                          child: Icon(Icons.edit),
                        ),
                      )
                    : Container(),
                Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Total Clicks",
                        textAlign: TextAlign.left,
                        style: GoogleFonts.nunito(
                            color: Colors.black,
                            fontSize: 15,
                            letterSpacing: 1,
                            fontWeight: FontWeight.w900),
                      ),
                      Text(
                        totalclicks,
                        textAlign: TextAlign.left,
                        style: GoogleFonts.nunito(
                            color: Colors.orange[900],
                            fontSize: 15,
                            fontWeight: FontWeight.w600),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
