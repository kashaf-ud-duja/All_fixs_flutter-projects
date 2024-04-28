import "package:flutter/material.dart";
import "package:google_fonts/google_fonts.dart";
class ProfileSettingSubHeading extends StatelessWidget {
  final String subheading;
  final Widget? secondarywidget;
   
ProfileSettingSubHeading({required this.subheading,this.secondarywidget});



  @override
  Widget build(BuildContext context) {
    return Container(
                            padding: EdgeInsets.symmetric(
                                horizontal: 20, vertical: 25),
                            width: double.infinity,
                            color: Colors.transparent,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget> [
                                Container(
                                  child: Text(
                                    subheading,
                                    
                                    style: GoogleFonts.nunito(
                                        color: Colors.black,
                                        fontSize: 14,
                                        fontWeight: FontWeight.w500),
                                  ),
                                ),
                                SizedBox(width: 90,),
                               secondarywidget ?? Icon(Icons.arrow_forward,size: 25,weight:900,),
                              ],
                            ),
                          );
  }
} 