import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import "package:flutter/material.dart";
import 'package:getwidget/components/drawer/gf_drawer.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final GlobalKey<ScaffoldState> _homepagekey = GlobalKey();

  List<IconData> iconslist = [
    FontAwesomeIcons.circleUser,
    FontAwesomeIcons.house,
    FontAwesomeIcons.bell
  ];

  int page=0;
  Widget pageviewsection(){
    return PageView(
      children: [
        Container(
          color: Colors.amber,
        ),
         Container(
          color: Colors.red,
        ),
         Container(
          color: Colors.black,
        ),
      ],
    );
  }







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
            width: 50,
            padding: EdgeInsets.symmetric(
              horizontal: 10,
            ),
            child: Image.asset("assets/dashboard/chatting.png"),
          ),
        ],
      ),
      /*drawer: GFDrawer(

      ),*/
      bottomNavigationBar: AnimatedBottomNavigationBar(
        backgroundColor: Colors.grey[300],
        icons: iconslist,
        activeIndex: page,
        activeColor: Colors.orange[900],
        inactiveColor: Colors.grey[900],
        splashSpeedInMilliseconds: 300,
        notchSmoothness:NotchSmoothness.softEdge,
        leftCornerRadius: 32,
        rightCornerRadius: 32,
        gapLocation: GapLocation.none,
        onTap: (p0) {
          print(p0);
        },
      ),
    body: pageviewsection(),
    );
  }
}
