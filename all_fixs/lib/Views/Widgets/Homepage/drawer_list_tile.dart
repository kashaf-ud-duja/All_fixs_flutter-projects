import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
class DrawerListTile extends StatelessWidget {
   final IconData IconName;
   final String TileTitle;

   DrawerListTile({
    //building constructor
    required this.IconName,
    required this.TileTitle,
   });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
                  onTap: () {
                    
                  },
                  child: ListTile(
                    title: Container(
                      alignment: Alignment.center,
                      height: 45,
                      child: Row(
                        children: [
                           Padding(
                            padding: EdgeInsets.symmetric(horizontal: 5.0),
                            child: Icon(
                              IconName,
                              color: Colors.grey,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 5.0),
                            child: Text(
                              TileTitle,
                              textAlign: TextAlign.left,
                              style: GoogleFonts.poppins(
                                  fontWeight: FontWeight.w700,
                                  fontSize: 15,
                                  letterSpacing: 1),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                );
  }
}