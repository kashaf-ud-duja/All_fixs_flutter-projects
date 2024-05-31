import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
class OneValueCard extends StatelessWidget {
  final String value;
  final Color clr;
  final Color? txtclr;
  OneValueCard({required this.value,required this.clr,required this.txtclr});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      width: 150,
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
                color:txtclr ?? Colors.white,
              ),
              textScaleFactor: 1,
            ),
          ],
        ),
      ),
    );
  }
}
