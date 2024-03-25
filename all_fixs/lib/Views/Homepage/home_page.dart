import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import "package:flutter/material.dart";
import 'package:getwidget/components/drawer/gf_drawer.dart';
import 'package:google_fonts/google_fonts.dart';
//import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomePage extends StatelessWidget {
  final GlobalKey<ScaffoldState> _homepagekey = GlobalKey();
  List<IconData> icons=[
    Icons.usb_rounded,
    Icons.home,
    Icons.notifications_active
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _homepagekey,
      appBar: AppBar(
        title: Text(
          "ALL FIXS",
          style: GoogleFonts.poppins(fontWeight: FontWeight.bold),
        ),
        backgroundColor: Color.fromRGBO(230, 81, 0, 1),
        centerTitle: true,
        leading: GestureDetector(
          onTap: () {
            //"!" Mark means treat this things as a non-null thing
            _homepagekey.currentState!.openDrawer();
          },
          child: Icon(Icons.menu),
        ),
        actions: [
          Container(
            width: 60,
            padding: EdgeInsets.symmetric(horizontal: 10,),
            child: Image.asset("assets/dashboard/message.png"),
          ),
        ],
      ),
      /*drawer: GFDrawer(

      ),*/
      bottomNavigationBar: AnimatedBottomNavigationBar(icons: icons,activeIndex: 0,onTap: (p0) {},),
    );
  }
}
