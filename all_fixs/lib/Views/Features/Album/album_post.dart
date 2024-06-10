import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:flutter/material.dart';
import 'package:getwidget/getwidget.dart';
import 'dart:ui' as prefix0;
import 'package:google_fonts/google_fonts.dart';
import 'package:slider_button/slider_button.dart';

class AlbumPost extends StatelessWidget {
  const AlbumPost({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
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
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              GestureDetector(
                                onTap: () {},
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
                            child: ClipRRect(
                              borderRadius: BorderRadius.all(
                                Radius.circular(20),
                              ),
                              child: Image.network(
                                "https://images.unsplash.com/photo-1509043759401-136742328bb3?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxleHBsb3JlLWZlZWR8MXx8fGVufDB8fHx8fA%3D%3D",
                                fit: BoxFit.cover,
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
                                crossAxisAlignment: CrossAxisAlignment.center,
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
                                       semanticFormatterCallback: (double newValue) {  
                                return '${newValue.round()} dollars';  
                              }  
                                    ),
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
                                            labelStyle:
                                                TextStyle(fontFamily: "Nunito"),
                                            fillColor: Colors.black,
                                            enabledBorder: OutlineInputBorder(
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
                                            focusedBorder: OutlineInputBorder(
                                              borderRadius:
                                                  BorderRadius.circular(20),
                                              borderSide: const BorderSide(
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
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
