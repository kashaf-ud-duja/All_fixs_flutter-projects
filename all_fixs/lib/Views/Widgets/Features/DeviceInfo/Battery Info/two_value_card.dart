import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
class BatteryInfoTwoValueCard extends StatelessWidget {
final String txt;
final String value;
final Widget? subWidget;
final Color? clr;
final Color? txtclr;
BatteryInfoTwoValueCard({required this.txt,required this.value,required this.subWidget,required this.clr,required this.txtclr});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 8,vertical: 8),
          color: Colors.transparent,
          width: double.infinity,
          child: Card(
            color: clr ?? Colors.white,
            elevation: 10,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  txt,
                  textAlign: TextAlign.center,
                  style: GoogleFonts.nunito(
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
               subWidget ?? Text(
                  value,
                  textAlign: TextAlign.center,
                  style: GoogleFonts.nunito(
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                    color:txtclr ?? Colors.orange[900],
                  ),
                ),
              ],
            ),
          )),
    );
  }
}
