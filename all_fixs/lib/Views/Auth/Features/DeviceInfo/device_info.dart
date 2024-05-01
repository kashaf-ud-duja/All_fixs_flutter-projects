import 'package:all_fixs/Views/Widgets/Features/DeviceInfo/top_banner.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';

class DeviceInfo extends StatelessWidget {
  const DeviceInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "ALL FIXS",
          style: GoogleFonts.poppins(fontWeight: FontWeight.bold),
        ),
        backgroundColor: Color.fromRGBO(230, 81, 0, 1),
        centerTitle: true,
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios),
          color: Colors.black,
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
      ),
      body: Column(
        children: [
          TopBanner(
            clr: [Color(0xFF000000), Color(0xDD000000)],
            title: 'Device Info',
          ),
          SizedBox(
            height: 20,
          ),
          Expanded(
            child: Container(
              padding: EdgeInsets.all(10),
              color: Colors.red,
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                        padding: EdgeInsets.all(10),
                        child: Container(
                          width: double.infinity,
                          child: Card(
                            elevation: 10,
                            child: Container(
                              decoration: BoxDecoration(
                                gradient:LinearGradient(colors: [Color(0xFF000000), Color(0xDD000000)]),
                                borderRadius: BorderRadius.all(
                                  Radius.circular(10),
                                ),
                              ),
                            ),
                          ),
                        )
                        // Column(
                        //   children: [
                        //     Expanded(
                        //         child: Container(
                        //       color: Colors.black,
                        //     )),
                        //     Expanded(
                        //         child: Container(
                        //       color: Colors.pink,
                        //     ))
                        //   ],
                        // ),
                        ),
                  ),
                  Expanded(
                      child: Container(
                    color: Colors.indigo,
                  )),
                ],
              ),
            ),
          ),
          Expanded(
            child: Container(color: Colors.amber),
          ),
        ],
      ),
    );
  }
}
