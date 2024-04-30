import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DashboardGradientFeature extends StatelessWidget {
  final String Iconimage;
  final String buttontext;
  final List<Color> clr;
  final FontWeight? weight; 
  DashboardGradientFeature(
      {required this.Iconimage, required this.buttontext, required this.clr,this.weight});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 15),
      child: Container(
          alignment: Alignment.center,
          height: 50,
          width: double.infinity,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.all(
              Radius.circular(15),
            ),
            boxShadow: [
              BoxShadow(
                color: Colors.grey,
                offset: Offset(0.0, 3.0),
                blurRadius: 3.0,
              ),
            ],
            gradient: LinearGradient(colors: clr),
          ),
          child: Padding(
            padding: EdgeInsets.all(8.0),
            child: Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Image.asset(
                    Iconimage,
                    filterQuality: FilterQuality.high,
                  ),
                  Flexible(
                    child: Text(
                      buttontext,
                      style: GoogleFonts.nunito(
                          color: Colors.black,
                          fontWeight:weight ?? FontWeight.bold,
                          fontSize: 12),
                    ),
                  )
                ],
              ),
            ),
          )),
    );
  }
}
