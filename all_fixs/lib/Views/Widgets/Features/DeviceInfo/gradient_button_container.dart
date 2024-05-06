import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
class GradientButtonContainer extends StatelessWidget {
  const GradientButtonContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        width: double.infinity,
        child: Container(
          color: Colors.purple,
          child: Card(
            elevation: 10,
            child: Container(
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      Color(0xFF86AAE8),
                      Color(0xFF92E9E3)
                    ]),
                borderRadius: BorderRadius.all(
                  Radius.circular(5),
                ),
              ),
              child: ElevatedButton(
                style: ButtonStyle(
                    elevation:
                        MaterialStateProperty.all<double>(0),
                    overlayColor:
                        MaterialStateProperty.all<Color>(
                            Colors.blue),
                    padding: MaterialStateProperty.all<
                            EdgeInsetsGeometry>(
                        const EdgeInsets.all(0)),
                    backgroundColor:
                        MaterialStateProperty.all<Color>(
                            Colors.transparent)),
                onPressed: () {},
                child: Column(
                  mainAxisAlignment:
                      MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      "User Status",
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
      ),
    );
  }
}
