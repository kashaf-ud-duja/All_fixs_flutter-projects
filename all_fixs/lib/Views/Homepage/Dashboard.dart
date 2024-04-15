import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DashBoard extends StatelessWidget {
  const DashBoard ({super.key});

  @override
  Widget build(BuildContext context) {
    return  Column(
      children: [
        Container(
          alignment: Alignment.center,
          child: Text("Dashboard" ,style: GoogleFonts.poppins(color: Colors.black),),
        )
      ],
    );
  }
}