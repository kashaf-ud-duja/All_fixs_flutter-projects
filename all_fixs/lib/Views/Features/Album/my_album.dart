import 'package:all_fixs/Views/Features/Album/album_post.dart';
import 'package:all_fixs/Views/Features/Album/image_view.dart';
import 'package:all_fixs/Views/Widgets/Features/Album/gallery_header.dart';
import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:circular_profile_avatar/circular_profile_avatar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:focused_menu/focused_menu.dart';
import 'package:focused_menu/modals.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:page_transition/page_transition.dart';

class MyAlbum extends StatelessWidget {
  const MyAlbum({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          GalleryHeader(
            name: "Kashaf's Gallery",
            biodescription: 'user bio section to dispaly one liner bio',
            iseditable: true,
            context: context,
            totaluploadvalue: '0',
            totalclicks: '56',
          ),
          Container(
              child: StaggeredGridView.countBuilder(
            shrinkWrap: true,
            padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            crossAxisCount: 4,
            itemCount: 6,
            itemBuilder: (Context, index) {
              return FocusedMenuHolder(
                menuWidth: MediaQuery.of(context).size.width * 0.30,
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
                onPressed: () {
                    Navigator.push(
                      context,
                      PageTransition(
                        type: PageTransitionType.fade,
                        child: AlbumPost(),
                      ),
                  );
                },
                child: Card(
                  // height: 40,
                  // width: 40,
                  child: Column(
                    children: <Widget>[
                      Hero(
                        tag:"https://cdn.pixabay.com/photo/2020/07/08/08/07/daisy-5383056_1280.jpg" ,
                        child: Image.network("https://cdn.pixabay.com/photo/2020/07/08/08/07/daisy-5383056_1280.jpg",
                        fit: BoxFit.cover,),
                      ),
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
