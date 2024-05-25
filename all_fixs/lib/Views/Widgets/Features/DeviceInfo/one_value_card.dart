import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
class OneValueCard extends StatelessWidget {
  final String value;
  final Color clr;
  OneValueCard({required this.value,required this.clr});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: 160,
      child: Card(
        color:clr,
        elevation: 10,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            
            Text(
              value,
              textAlign: TextAlign.center,
              style: GoogleFonts.nunito(
                fontWeight: FontWeight.w900,
                fontSize: 15,
              ),
              textScaleFactor: 1,
            ),
          ],
        ),
      ),
    );
  }
}
