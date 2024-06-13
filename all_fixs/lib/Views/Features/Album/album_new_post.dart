import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
class   AlbumNewPost extends StatelessWidget {
  const AlbumNewPost({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
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
      // Listview is built-in scrollable
      body: ListView(children: [
Container(),
Container(
  height: 300,
  width: MediaQuery.of(context).size.width*0.5,
  
)
      ],)
    );
  }
}