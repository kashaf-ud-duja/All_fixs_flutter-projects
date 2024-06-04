import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:circular_profile_avatar/circular_profile_avatar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:focused_menu/focused_menu.dart';
import 'package:focused_menu/modals.dart';
import 'package:google_fonts/google_fonts.dart';

class MyAlbum extends StatelessWidget {
  const MyAlbum({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          GalleryHeader(
            name: 'Kashaf ud duja',
            biodescription: 'user bio section to dispaly one liner bio',
            iseditable: true,
            context: context,
            totaluploadvalue: '0',
            totalclicks: '56',
          ),
          Container(
              child: StaggeredGridView.countBuilder(
            physics: NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            crossAxisCount: 3,
            itemCount: 7,
            itemBuilder: (Context, index) {
              return FocusedMenuHolder(
                menuWidth: MediaQuery.of(context).size.width * 0.50,
                blurSize: 5.0,
                menuItemExtent: 45,
                menuBoxDecoration: BoxDecoration(
                    color: Colors.grey,
                    borderRadius: BorderRadius.all(Radius.circular(15.0))),
                duration: Duration(milliseconds: 100),
                animateMenuItems: true,
                blurBackgroundColor: Colors.black54,
                openWithTap:
                    true, // Open Focused-Menu on Tap rather than Long Press
                menuOffset:
                    10.0, // Offset value to show menuItem from the selected item
                bottomOffsetHeight:
                    80.0, // Offset height to consider, for showing the menu item ( for example bottom navigation bar), so that the popup menu will be shown on top of selected item.
                menuItems: <FocusedMenuItem>[
                  // Add Each FocusedMenuItem  for Menu Options
                  FocusedMenuItem(
                      title: Text("Open"),
                      trailingIcon: Icon(Icons.open_in_new),
                      onPressed: () {}),
                  FocusedMenuItem(
                      title: Text("Share"),
                      trailingIcon: Icon(Icons.share),
                      onPressed: () {}),
                  FocusedMenuItem(
                      title: Text("Favorite"),
                      trailingIcon: Icon(Icons.favorite_border),
                      onPressed: () {}),
                  FocusedMenuItem(
                      title: Text(
                        "Delete",
                        style: TextStyle(color: Colors.redAccent),
                      ),
                      trailingIcon: Icon(
                        Icons.delete,
                        color: Colors.redAccent,
                      ),
                      onPressed: () {}),
                ],
                onPressed: () {},
                child: Card(
                  child: Column(
                    children: <Widget>[
                      Image.asset("assets/images/doodle3"),
                    ],
                  ),
                ),
              );
            },
            staggeredTileBuilder: (int index) =>
                new StaggeredTile.count(2, index.isEven ? 2 : 3),
            mainAxisSpacing: 10.0,
            crossAxisSpacing: 15.0,
          ))
        ],
      ),
    );
  }
}

class GalleryHeader extends StatelessWidget {
  final BuildContext context;
  final String totaluploadvalue;
  final String totalclicks;
  final bool iseditable;
  final String name;
  final String biodescription;

  GalleryHeader({
    required this.name,
    required this.biodescription,
    required this.iseditable,
    required this.context,
    required this.totaluploadvalue,
    required this.totalclicks,
  });
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 350,
      width: double.infinity,
      decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(50),
            bottomRight: Radius.circular(50),
          ),
          boxShadow: [
            BoxShadow(
              color: Color.fromRGBO(158, 158, 158, 1),
              offset: Offset(0.0, 1.0),
              blurRadius: 6.0,
            )
          ]),
      child: Column(
        children: [
          Container(
            height: 250,
            width: double.infinity,
            decoration: const BoxDecoration(
              // color: Color.fromRGBO(230, 81, 0, 1),
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  Color(0xFFFFA726),
                  Color(0xFFE65100),
                ],
              ),
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(60),
                bottomRight: Radius.circular(60),
              ),
              boxShadow: [
                BoxShadow(
                  color: Color.fromRGBO(158, 158, 158, 1),
                  offset: Offset(0.0, 1.0),
                  blurRadius: 6.0,
                ),
              ],
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                const SizedBox(
                  width: 30,
                ),
                Text(
                  "Gallery",
                  style: GoogleFonts.nunito(
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    fontSize: 20,
                  ),
                ),
                CircularProfileAvatar(
                  '',
                  radius: 40,
                  backgroundColor: Colors.black,
                  borderWidth: 2,
                  borderColor: Colors.grey,
                  elevation: 5.0,
                  errorWidget: (context, url, error) {
                    return Icon(
                      Icons.face,
                      size: 20,
                    );
                  },
                  cacheImage: true,
                  onTap: () async {},
                  animateFromOldImageOnUrlChange: true,
                  placeHolder: (context, url) {
                    return Container(
                      child: Center(
                        child: CircularProgressIndicator(),
                      ),
                    );
                  },
                ),
                Text(
                  name,
                  textAlign: TextAlign.left,
                  style: GoogleFonts.nunito(
                      color: Colors.white,
                      fontSize: 20,
                      letterSpacing: 1,
                      fontWeight: FontWeight.w900),
                ),
                Text(
                  biodescription,
                  textAlign: TextAlign.left,
                  style: GoogleFonts.nunito(
                      color: Colors.black,
                      fontSize: 15,
                      fontWeight: FontWeight.w600),
                ),
              ],
            ),
          ),
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Total Uploads",
                        textAlign: TextAlign.left,
                        style: GoogleFonts.nunito(
                            color: Colors.black,
                            fontSize: 15,
                            letterSpacing: 1,
                            fontWeight: FontWeight.w900),
                      ),
                      Text(
                        totaluploadvalue,
                        textAlign: TextAlign.left,
                        style: GoogleFonts.nunito(
                            color: Colors.orange[900],
                            fontSize: 15,
                            fontWeight: FontWeight.w600),
                      ),
                    ],
                  ),
                ),
                iseditable
                    ? GestureDetector(
                        onTap: () {
                          AwesomeDialog(
                                  context: context,
                                  animType: AnimType.scale,
                                  dialogType: DialogType.noHeader,
                                  body: Center(
                                    child: Padding(
                                      padding: const EdgeInsets.all(20),
                                      child: TextField(
                                        decoration: InputDecoration(
                                          labelText: "Enter Album Description",
                                          labelStyle:
                                              TextStyle(fontFamily: "Nunito"),
                                          fillColor: Colors.black,
                                          enabledBorder: OutlineInputBorder(
                                            borderRadius:
                                                BorderRadius.circular(20),
                                            borderSide:
                                                BorderSide(color: Colors.black),
                                          ),
                                          border: OutlineInputBorder(
                                            borderRadius:
                                                BorderRadius.circular(20),
                                            borderSide: BorderSide(
                                              color: const Color.fromRGBO(
                                                  230, 81, 0, 1),
                                            ),
                                          ),
                                          focusedBorder: OutlineInputBorder(
                                            borderRadius:
                                                BorderRadius.circular(20),
                                            borderSide: BorderSide(
                                              color: Colors.green,
                                            ),
                                          ),
                                        ),
                                        keyboardType: TextInputType.multiline,
                                        maxLines: null,
                                        minLines: 2,
                                      ),
                                    ),
                                  ),
                                  btnOkOnPress: () {})
                              .show();
                        },
                        child: Container(
                          height: 60,
                          width: 60,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            gradient: LinearGradient(
                              colors: [
                                Color(0xFFFFA726),
                                Color(0xFFE65100),
                              ],
                            ),
                          ),
                          child: Icon(Icons.edit),
                        ),
                      )
                    : Container(),
                Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Total Clicks",
                        textAlign: TextAlign.left,
                        style: GoogleFonts.nunito(
                            color: Colors.black,
                            fontSize: 15,
                            letterSpacing: 1,
                            fontWeight: FontWeight.w900),
                      ),
                      Text(
                        totalclicks,
                        textAlign: TextAlign.left,
                        style: GoogleFonts.nunito(
                            color: Colors.orange[900],
                            fontSize: 15,
                            fontWeight: FontWeight.w600),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
