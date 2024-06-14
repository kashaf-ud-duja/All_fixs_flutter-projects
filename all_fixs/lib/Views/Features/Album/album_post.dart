import 'package:all_fixs/Views/Features/Album/image_view.dart';
import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:expandable_text/expandable_text.dart';
import 'package:flutter/material.dart';
import 'package:focused_menu/focused_menu.dart';
import 'package:focused_menu/modals.dart';
import 'package:getwidget/getwidget.dart';
import 'dart:ui' as prefix0;
import 'package:google_fonts/google_fonts.dart';
import 'package:list_tile_more_customizable/list_tile_more_customizable.dart';
import 'package:page_transition/page_transition.dart';
import 'package:slider_button/slider_button.dart';

class AlbumPost extends StatelessWidget {
  const AlbumPost({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            SingleChildScrollView(
              child: Column(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(40),
                      bottomRight: Radius.circular(40),
                    ),
                    child: Container(
                      width: double.infinity,
                      height: 600,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: NetworkImage(
                              "https://images.unsplash.com/photo-1509043759401-136742328bb3?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxleHBsb3JlLWZlZWR8MXx8fGVufDB8fHx8fA%3D%3D"),
                          fit: BoxFit.cover,
                        ),
                      ),
                      child: BackdropFilter(
                        filter: prefix0.ImageFilter.blur(
                          sigmaX: 7,
                          sigmaY: 14,
                        ),
                        child: Container(
                          color: Colors.black.withOpacity(0.85),
                          child: Column(
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  GestureDetector(
                                    onTap: () {
                                      Navigator.of(context).pop();
                                    },
                                    child: Padding(
                                      padding: const EdgeInsets.all(20.0),
                                      child: Icon(
                                        Icons.arrow_back,
                                        color: Colors.white,
                                        size: 30,
                                      ),
                                    ),
                                  ),
                                  Text(
                                    "ALL FIXS",
                                    style: GoogleFonts.poppins(
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white,
                                        fontSize: 25),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(20.0),
                                    child: GFAvatar(
                                      backgroundColor: Colors.orange[900],
                                      size: 30,
                                    ),
                                  )
                                ],
                              ),
                              SizedBox(
                                height: 30,
                              ),
                              Padding(
                                padding: const EdgeInsets.all(20.0),
                                child: GestureDetector(
                                  onTap: () {
                                    Navigator.push(
                                      context,
                                      PageTransition(
                                        type: PageTransitionType.fade,
                                        child: ImageView(url: 'https://images.unsplash.com/photo-1509043759401-136742328bb3?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxleHBsb3JlLWZlZWR8MXx8fGVufDB8fHx8fA%3D%3D',),
                                      ),
                                    );
                                  },
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.all(
                                      Radius.circular(20),
                                    ),
                                    child: Hero(
                                      tag:
                                          "https://images.unsplash.com/photo-1509043759401-136742328bb3?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxleHBsb3JlLWZlZWR8MXx8fGVufDB8fHx8fA%3D%3D",
                                      child: Image.network(
                                        "https://images.unsplash.com/photo-1509043759401-136742328bb3?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxleHBsb3JlLWZlZWR8MXx8fGVufDB8fHx8fA%3D%3D",
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 30,
                              ),
                              Container(
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(10),
                                  ),
                                ),
                                child: Container(
                                  width: 300,
                                  height: 80,
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Icon(
                                        Icons.favorite,
                                        size: 40,
                                      ),
                                      SizedBox(
                                        height: 30,
                                      ),
                                      Center(
                                        child: Slider(
                                            value: 10,
                                            min: 1.0,
                                            max: 20.0,
                                            activeColor: Colors.orange[900],
                                            inactiveColor: Colors.black,
                                            onChangeStart: (value) {},
                                            onChangeEnd: (value) {},
                                            onChanged: (double newValue) {
                                              // setState(() {
                                              //   var _value = newValue.round();
                                              // });
                                            },
                                            semanticFormatterCallback:
                                                (double newValue) {
                                              return '${newValue.round()} dollars';
                                            }),
                                      )
                                    ],
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Caption",
                              style: GoogleFonts.nunito(
                                fontWeight: FontWeight.w900,
                                color: Colors.orange[900],
                                fontSize: 20,
                              ),
                            ),
                            GestureDetector(
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
                                                labelText: "Edit Caption",
                                                labelStyle: TextStyle(
                                                    fontFamily: "Nunito"),
                                                fillColor: Colors.black,
                                                enabledBorder:
                                                    OutlineInputBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(20),
                                                  borderSide: BorderSide(
                                                      color: Colors.black),
                                                ),
                                                border: OutlineInputBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(20),
                                                  borderSide: BorderSide(
                                                    color: const Color.fromRGBO(
                                                        230, 81, 0, 1),
                                                  ),
                                                ),
                                                focusedBorder:
                                                    OutlineInputBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(20),
                                                  borderSide: const BorderSide(
                                                    color: Colors.green,
                                                  ),
                                                ),
                                              ),
                                              keyboardType:
                                                  TextInputType.multiline,
                                              maxLines: null,
                                              minLines: 2,
                                            ),
                                          ),
                                        ),
                                        dismissOnBackKeyPress: true,
                                        isDense: true,
                                        btnOkText: "Confirm Caption",
                                        btnOkColor: Colors.orange[900],
                                        btnOkOnPress: () {})
                                    .show();
                              },
                              child: Icon(
                                Icons.edit,
                                size: 25,
                                color: Colors.black,
                              ),
                            ),
                          ],
                        ),
                        FocusedMenuHolder(
                          menuWidth: MediaQuery.of(context).size.width * 0.50,
                          blurSize: 2.0,
                          menuItemExtent: 45,
                          duration: Duration(milliseconds: 100),
                          animateMenuItems: true,
                          blurBackgroundColor: Colors.black54,
                          menuOffset: 10.0,
                          bottomOffsetHeight: 80,
                          menuBoxDecoration: BoxDecoration(
                            color: Colors.grey,
                            borderRadius: BorderRadius.all(
                              Radius.circular(20),
                            ),
                          ),
                          menuItems: [
                            FocusedMenuItem(
                              title: Text(
                                "Copy",
                                style: GoogleFonts.nunito(
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              trailingIcon: const Icon(Icons.copy),
                              onPressed: () {},
                            ),
                            FocusedMenuItem(
                              title: Text(
                                "Edit",
                                style: GoogleFonts.nunito(
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              trailingIcon: const Icon(
                                Icons.edit_document,
                              ),
                              onPressed: () {
                                AwesomeDialog(
                                        context: context,
                                        animType: AnimType.scale,
                                        dialogType: DialogType.noHeader,
                                        body: Center(
                                          child: Padding(
                                            padding: const EdgeInsets.all(20),
                                            child: TextField(
                                              decoration: InputDecoration(
                                                labelText: "Edit Caption",
                                                labelStyle: const TextStyle(
                                                    fontFamily: "Nunito"),
                                                fillColor: Colors.black,
                                                enabledBorder:
                                                    OutlineInputBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(20),
                                                  borderSide: const BorderSide(
                                                      color: Colors.black),
                                                ),
                                                border: OutlineInputBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(20),
                                                  borderSide: const BorderSide(
                                                    color: Color.fromRGBO(
                                                        230, 81, 0, 1),
                                                  ),
                                                ),
                                                focusedBorder:
                                                    OutlineInputBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(20),
                                                  borderSide: const BorderSide(
                                                    color: Colors.green,
                                                  ),
                                                ),
                                              ),
                                              keyboardType:
                                                  TextInputType.multiline,
                                              maxLines: null,
                                              minLines: 2,
                                            ),
                                          ),
                                        ),
                                        dismissOnBackKeyPress: true,
                                        isDense: true,
                                        btnOkText: "Confirm Caption",
                                        btnOkColor: Colors.orange[900],
                                        btnOkOnPress: () {})
                                    .show();
                              },
                            ),
                          ],
                          onPressed: () {},
                          child: ExpandableText(
                              "we will pass the caption in here,we will pass the caption in herewe will pass the caption in here,we will pass the caption in here,we will pass the caption in here,we will pass the caption in here",
                              expandText: "show more",
                              collapseText: "show less",
                              maxLines: 2,
                              linkColor: Colors.orange[900],
                              style: GoogleFonts.nunito(
                                  fontSize: 16, fontWeight: FontWeight.w400),
                              textAlign: TextAlign.left),
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        Text(
                          "Comments",
                          textAlign: TextAlign.center,
                          style: GoogleFonts.nunito(
                            fontWeight: FontWeight.w500,
                            fontSize: 18,
                            color: Colors.black,
                          ),
                        ),
                        ListView.builder(
                          itemCount: 3,
                          shrinkWrap: true,
                          itemBuilder: (BuildContext context, int index) {
                            return FocusedMenuHolder(
                              menuWidth:
                                  MediaQuery.of(context).size.width * 0.50,
                              blurSize: 2.0,
                              menuItemExtent: 45,
                              duration: Duration(milliseconds: 100),
                              animateMenuItems: true,
                              blurBackgroundColor: Colors.black54,
                              menuOffset: 10.0,
                              bottomOffsetHeight: 80,
                              menuBoxDecoration: BoxDecoration(
                                color: Colors.grey,
                                borderRadius: BorderRadius.all(
                                  Radius.circular(20),
                                ),
                              ),
                              menuItems: [
                                FocusedMenuItem(
                                  title: Text(
                                    "Copy",
                                    style: GoogleFonts.nunito(
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                  trailingIcon: Icon(Icons.copy),
                                  onPressed: () {},
                                ),
                                FocusedMenuItem(
                                  title: Text(
                                    "Delete",
                                    style: GoogleFonts.nunito(
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                  trailingIcon: Icon(
                                    Icons.edit_document,
                                  ),
                                  onPressed: () {},
                                ),
                              ],
                              onPressed: () {},
                              child: ListTileMoreCustomizable(
                                title: Text("@noor"),
                                leading: GFAvatar(
                                  backgroundColor: Colors.blue,
                                ),
                                horizontalTitleGap: 0.0,
                                minVerticalPadding: 10.0,
                                minLeadingWidth: 60,
                                contentPadding: EdgeInsets.all(0),
                                isThreeLine: false,
                                subtitle: Text("this is my comment"),
                                // leading is for left
                                trailing: Text(
                                  "1 min ago",
                                  style: GoogleFonts.nunito(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 12,
                                      color: Colors.grey),
                                ),
                                onTap: null,
                                onLongPress: null,
                              ),
                            );
                          },
                        ),
                        const SizedBox(height: 50),
                      ],
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Align(
                alignment: Alignment.bottomCenter,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: TextField(
                        controller: null,
                        focusNode: null,
                        keyboardType: TextInputType.multiline,
                        textCapitalization: TextCapitalization.sentences,
                        maxLines: 3,
                        minLines: 1,
                        style: TextStyle(color: Colors.white),
                        onChanged: (value) {},
                        decoration: InputDecoration(
                          hintText: "start a conversation",
                          hintStyle: TextStyle(
                              fontFamily: "nunito", color: Colors.white),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(60)),
                            borderSide: BorderSide.none,
                          ),
                          contentPadding: EdgeInsets.all(20),
                          filled: true,
                          fillColor: Colors.orange[900],
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {},
                      child: Icon(
                        Icons.arrow_forward_ios,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
