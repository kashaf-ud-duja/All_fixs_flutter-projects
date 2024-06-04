import 'dart:html';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
class GradientButtonContainer extends StatelessWidget {
final String Title;
final List<Color> clr;
final Color Overlayclr;
final bool isgradientvertical;
GradientButtonContainer({
required this.Title,
required this.Overlayclr,
required this.clr,
required this.isgradientvertical
});

  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Card(
              elevation: 10,
              child: Container(
                decoration:  BoxDecoration(
                  gradient: LinearGradient(
                      begin: isgradientvertical ? Alignment.topCenter: Alignment.centerLeft,
                      end:isgradientvertical ? Alignment.bottomCenter: Alignment.centerRight,
                      colors: clr,
                      ),
                  // borderRadius: BorderRadius.all(
                  //   Radius.circular(5),
                  // ),
                ),
                child: ElevatedButton(
                  style: ButtonStyle(
                      elevation:
                          WidgetStateProperty.all<double>(0),
                          //overlay color is the color that will dispalyed pnce hover on the button.
                        
                      overlayColor:
                          WidgetStateProperty.all<Color>(
                              Overlayclr),
                      padding:WidgetStateProperty.all<
                              EdgeInsetsGeometry>(
                          const EdgeInsets.all(0)),
                      backgroundColor:
                          WidgetStateProperty.all<Color>(
                              Colors.transparent)),
                  onPressed: () {},
                  child: Column(
                    mainAxisAlignment:
                        MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(
                        Title,
                        style: GoogleFonts.nunito(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
  
    );
  }
}
