import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AlbumNewPost extends StatelessWidget {
  const AlbumNewPost({super.key});

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
      // Listview is built-in scrollable
      body: ListView(
        children: [
          Container(
              // this container is for picture loading widget
              ),
          Container(
            height: 300,
            width: MediaQuery.of(context).size.width * 0.8,
            child: Center(
              child: Container(
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.contain,
                    image: NetworkImage(
                        "https://cdn.pixabay.com/photo/2020/07/08/08/07/daisy-5383056_1280.jpg"),
                  ),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          ListTile(
            leading: CircleAvatar(
              backgroundColor: Colors.orange[900],
            ),
            title: Container(
              width: 250.0,
              child: TextField(
                controller: null,
                decoration: InputDecoration(
                  hintText: "Write a Caption....",
                  border: InputBorder.none,
                ),
                onChanged: (value) {},
              ),
            ),
          ),
          Divider(),
          Padding(
            padding: const EdgeInsets.all(40.0),
            child: ElevatedButton(
              style: ButtonStyle(
                backgroundColor: WidgetStateProperty.all(Colors.orange[900]),
                shape: WidgetStateProperty.all(
                  RoundedRectangleBorder(borderRadius: BorderRadius.circular(60)),
                ),
                minimumSize: WidgetStateProperty.all(Size(50, 50)),
              ),
              onPressed: () {},
              child: Text(
                "Post Picture",
                style: GoogleFonts.poppins(
                  fontSize: 15,
                  color: Colors.white,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
