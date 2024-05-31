import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TwoWidgetCard extends StatelessWidget {
  final String txt1;
  final String value1;
  final Widget? subWidget1;
  final Color? txtclr1;
  final Color? valueclr1;

  final Color? cardclr;

  final String txt2;
  final Color? txtclr2;
  final String value2;
  final Color? valueclr2;
  final Widget? subWidget2;

  TwoWidgetCard({
    required this.txt1,
    required this.value1,
    required this.subWidget1,
    required this.txtclr1,
    required this.valueclr1,

    required this.cardclr,

    required this.txt2,
    required this.txtclr2,
    required this.value2,
    required this.valueclr2,
    required this.subWidget2,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
          padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
          color: Colors.transparent,
          width: double.infinity,
          child: Card(
            color: cardclr ?? Colors.white,
            elevation: 10,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  child: Column(
                    children: [
                      Text(
                        txt1,
                        textAlign: TextAlign.center,
                        style: GoogleFonts.nunito(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                          color: txtclr1 ?? Colors.black,
                        ),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      subWidget1 ??
                          Text(
                            value1,
                            textAlign: TextAlign.center,
                            style: GoogleFonts.nunito(
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                              color: valueclr1 ?? Colors.orange[900],
                            ),
                          ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        txt2,
                        textAlign: TextAlign.center,
                        style: GoogleFonts.nunito(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                          color: txtclr2 ?? Colors.black,
                        ),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      subWidget2 ??
                          Text(
                            value2,
                            textAlign: TextAlign.center,
                            style: GoogleFonts.nunito(
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                              color: valueclr2 ?? Colors.orange[900],
                            ),
                          ),
                    ],
                  ),
                ),
              ],
            ),
          )),
    );
  }
}
