import 'package:all_fixs/Views/Widgets/Features/DeviceInfo/gradient_button_container.dart';
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
                      color: Colors.purple,
                      child: Column(
                        children: [
                          Expanded(
                            flex: 10,
                            child: GradientButtonContainer(
                              Title: "Device Info",
                              Overlayclr: Colors.cyan,
                              clr: [Color(0xFF86AAE8), Color(0xFF92E9E3)],
                              isgradientvertical: true,
                            ),
                          ),
                          Expanded(
                            flex: 6,
                            child: GradientButtonContainer(
                              Title: "Battery",
                              Overlayclr: Colors.orangeAccent,
                              clr: [Color(0xFFFAD585), Color(0xFFF47A7D)],
                              isgradientvertical: true,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    child: GradientButtonContainer(
                      Title: "General",
                      Overlayclr: Colors.teal.shade300,
                      clr: [Color(0xFF8C9C2), Color(0xFF92E9E3)],
                      isgradientvertical: false,
                    ),
                  ),
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
