import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TwoValueCard extends StatelessWidget {
  final String text;
  final String value;
  final Widget? subwidget;
  final Color? clr;
  final Color? txtclr;

  TwoValueCard({
    required this.text,
    required this.value,
    required this.clr,
    required this.subwidget,
    required this.txtclr,
  });
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
      width: double.infinity,
      child: Card(
        elevation: 10,
        color: clr ?? Colors.white,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              text,
              textAlign: TextAlign.center,
              style: GoogleFonts.nunito(
                fontWeight: FontWeight.bold,
                color: Colors.black
              ),
            ),
            SizedBox(
              height: 2,
            ),
            subwidget ??
                Text(
                  value,
                  textAlign: TextAlign.center,
                  style: GoogleFonts.nunito(
                    fontWeight: FontWeight.w900,
                    color: txtclr ?? Colors.orange[900],
                    fontSize: 18,
                  ),
                ),
          ],
        ),
      ),
    );
  }
}
