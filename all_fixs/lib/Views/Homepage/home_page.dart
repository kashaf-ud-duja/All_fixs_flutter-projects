import 'package:all_fixs/Views/Homepage/Dashboard.dart';
import 'package:all_fixs/Views/Profile/profile.dart';
import 'package:all_fixs/Views/Widgets/Homepage/drawer_list_tile.dart';
import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:circular_profile_avatar/circular_profile_avatar.dart';
import 'package:flutter/cupertino.dart';
import "package:flutter/material.dart";
import 'package:flutter/widgets.dart';
import 'package:getwidget/components/drawer/gf_drawer.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  //Defining a golbal key(_homepagekey) to access the drawer functionality , and we cannot access this key outside the class in which we have defined it
  // and if we add underscore(_) before a variable then it becomes a private variable i.e. _homepagekey
  final GlobalKey<ScaffoldState> _homepagekey = GlobalKey();

  List<IconData> iconslist = [
    FontAwesomeIcons.circleUser,
    FontAwesomeIcons.house,
    FontAwesomeIcons.bell
  ];

  int page = 1;
  int Pageview = 1;
  PageController pageController = PageController(initialPage: 1);

// it's a function that return a widget(used to render the page)
  Widget pageviewsection() {
    return PageView(
      controller: pageController,
      onPageChanged: (value) {
        setState(
          () {
            print(value);
          },
        );
      },
      children: [
       Profile(),
        DashBoard(),
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
          style: GoogleFonts.poppins(
              fontWeight: FontWeight.bold, color: Colors.white),
        ),
        backgroundColor: Colors.black,
        centerTitle: true,
        leading: GestureDetector(
          onTap: () {
            //"!" Mark means treat this things as a non-null thing
            _homepagekey.currentState!.openDrawer();
          },
          //drawer is a sccafold's property so we need to define global key in order to access this drawer functionality
          child: Icon(Icons.menu ,color: Colors.white,),
        ),
        actions: [
          Container(
            width: 50,
            padding: EdgeInsets.symmetric(
              horizontal: 10,
            ),
            child: Image.asset(
              "assets/dashboard/chatting.png",
              color: Colors.white,
            ),
          ),
        ],
      ),
      drawer: GFDrawer(
      color: Colors.white,
        child: Column(
          children: [
            Expanded(
              flex: 0,
              child: Column(
                children: [
                  Row(
                    children: [
                      SizedBox(
                        height: 30,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 25.0, vertical: 25),
                        child: SizedBox(
                          width: 50,
                          height: 50,
                          child: CircularProfileAvatar(
                            "",
                            backgroundColor: Colors.yellow,
                            borderWidth: 1,
                            borderColor: Colors.black,
                            elevation: 20,
                            radius: 40,
                            cacheImage: true,
                            errorWidget: (context, url, error) {
                              return const Icon(
                                Icons.face,
                                size: 50,
                              );
                            },
                            onTap: () {
                              pageController.animateToPage(0,
                                  duration: const Duration(milliseconds: 300),
                                  curve: Curves.linear);
                              Navigator.of(context).pop();
                            },
                            animateFromOldImageOnUrlChange: true,
                            placeHolder: (context, url) {
                              return Container(
                                  child: const Center(
                                child: CircularProgressIndicator(),
                              ));
                            },
                          ),
                        ),
                      ),
                      Flexible(
                          child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Kashaf ud duja",
                            textAlign: TextAlign.left,
                            style: GoogleFonts.poppins(
                                fontWeight: FontWeight.bold,
                                fontSize: 15,
                                letterSpacing: 1),
                          ),
                          Text(
                            "kashaf@gmial.com",
                            textAlign: TextAlign.left,
                            style: GoogleFonts.poppins(
                                color: Colors.grey,
                                fontWeight: FontWeight.normal,
                                fontSize: 13),
                          )
                        ],
                      ))
                    ],
                  )
                ],
              ),
            ),
            Expanded(
                flex: 0,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 5),
                      child: Container(
                        padding:
                            EdgeInsets.symmetric(horizontal: 25, vertical: 10),
                        decoration: BoxDecoration(
                            color: Colors.orange[900],
                            borderRadius:
                                BorderRadius.all(Radius.circular(50))),
                        child: Text(
                          "Premium",
                          textAlign: TextAlign.center,
                          style: GoogleFonts.poppins(
                              fontWeight: FontWeight.bold, color: Colors.white),
                        ),
                      ),
                    )
                  ],
                )),
            const Expanded(
              flex: 0,
              child: Divider(),
            ),
            Column(
              children: [
                DrawerListTile(
                    IconName: FontAwesomeIcons.solidCreditCard,
                    TileTitle: "Subscription"),
                DrawerListTile(IconName: Icons.settings, TileTitle: "Settings"),
                DrawerListTile(IconName: Icons.help, TileTitle: "Help"),
                DrawerListTile(IconName: Icons.feedback, TileTitle: "Feedback"),
                DrawerListTile(
                    IconName: FontAwesomeIcons.share, TileTitle: "Tell Others"),
                DrawerListTile(
                    IconName: Icons.star_half_sharp, TileTitle: "Rate App"),
              ],
            ),
            Expanded(
                child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Divider(),
                DrawerListTile(IconName: Icons.logout, TileTitle: "Logout")
              ],
            ))
          ],
        ),
      ),
      bottomNavigationBar: AnimatedBottomNavigationBar(
        backgroundColor: Colors.grey[300],
        icons: iconslist,
        activeIndex: page,
        activeColor: Colors.orange[900],
        inactiveColor: Colors.grey[900],
        splashSpeedInMilliseconds: 300,
        notchSmoothness: NotchSmoothness.smoothEdge,
        // leftCornerRadius: 32,
        // rightCornerRadius: 32,
        gapLocation: GapLocation.none,
        onTap: (p0) {
          setState(() {
            Pageview = p0;
            pageController.animateToPage(p0,
                duration: Duration(milliseconds: 200), curve: Curves.linear);
          });
        },
      ),
      body: pageviewsection(),
    );
  }
}
