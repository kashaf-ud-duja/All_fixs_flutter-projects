import "package:flutter/material.dart";
import "package:flutter/widgets.dart";
import "package:google_fonts/google_fonts.dart";

class CardDetailView extends StatelessWidget {
  final Color clr;
  final Icon icons;
  final String type;
  final String value;

  CardDetailView(
      {required this.clr,
      required this.icons,
      required this.type,
      required this.value});
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 5, vertical: 5),
      child: Container(
        decoration: BoxDecoration(
          color: clr,
          borderRadius: BorderRadius.all(
            Radius.circular(10),
          ),
        ),
        height: 50,
        width: double.infinity,
        child: Row(
          children: <Widget>[
            SizedBox(
              width: 10,
            ),
            icons,
            SizedBox(
              width: 10,
            ),
            Text(
              type,
              textScaleFactor: 1,
              textAlign: TextAlign.left,
              style: GoogleFonts.nunito(color: Colors.black, fontSize: 14,),
            ),
            Flexible(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 10),
                child: Align(
                  alignment: Alignment.centerRight,
                  child: Text(
                    value,
                    textAlign: TextAlign.center,
                    style: GoogleFonts.nunito(
                        fontWeight: FontWeight.bold,
                        fontSize: 14,
                        color: value == "Value not currently set"
                        ? Colors.red
                        : Colors.black),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
