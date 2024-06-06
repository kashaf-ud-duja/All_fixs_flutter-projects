import 'package:all_fixs/Views/Features/Album/friend_album.dart';
import 'package:all_fixs/Views/Features/Album/my_album.dart';
import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:flutter/animation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';

class AlbumMain extends StatefulWidget {
  const AlbumMain({super.key});
  @override
  State<AlbumMain> createState() => _AlbumMainState();
}

class _AlbumMainState extends State<AlbumMain>
    with SingleTickerProviderStateMixin {
  late Animation<double> animation;
  late AnimationController animationController;
  late CurvedAnimation curve;

  List<IconData> iconslist = [
    Icons.person_outline,
    Icons.people_outline,
  ];
  int page = 0;
  int Pageview = 0;
  PageController pageController = PageController(initialPage: 0);
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
        MyAlbum(),
        FriendAlbum(),
      ],
    );
  }

  // BUILD function before rendering run in init state
  @override
  void initState() {
    animationController = AnimationController(
      vsync: this,
      duration: Duration(seconds: 1),
    );
    curve = CurvedAnimation(
        parent: animationController,
        curve: const Interval(0.5, 1.0, curve: Curves.fastOutSlowIn));
    animation =
        Tween<double>(begin: 0, end: 1).animate(curve) as Animation<double>;
    animationController.forward();

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "ALL FIXS",
          style: GoogleFonts.poppins(fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.transparent,
        centerTitle: true,
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios),
          color: Colors.black,
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
      ),
      floatingActionButton: ScaleTransition(
        scale: animation,
        child: FloatingActionButton(
          elevation: 5,
          splashColor: Colors.grey,
          backgroundColor: Colors.black,
          child: Icon(
            Icons.add,
            color: Colors.orange[900],
            size: 35,
          ),
          onPressed: () {},
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: AnimatedBottomNavigationBar(
        backgroundColor: Colors.grey[300],
        icons: iconslist,
        iconSize: 30,
        activeIndex: page,
        activeColor: Colors.orange[900],
        inactiveColor: Colors.grey[900],
        splashSpeedInMilliseconds: 300,
        notchSmoothness: NotchSmoothness.smoothEdge,
        // leftCornerRadius: 32,
        // rightCornerRadius: 32,
        gapLocation: GapLocation.center,
        onTap: (p0) {
          setState(
            () {
              Pageview = p0;
              pageController.animateToPage(p0,
                  duration: Duration(milliseconds: 200), curve: Curves.linear);
            },
          );
        },
      ),
      body: pageviewsection(),
    );
  }
}
