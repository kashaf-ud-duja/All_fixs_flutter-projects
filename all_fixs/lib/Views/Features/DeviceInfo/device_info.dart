import 'package:all_fixs/Views/Features/DeviceInfo/BatteryInfo/battery_info.dart';
import 'package:all_fixs/Views/Features/DeviceInfo/Device%20Specs/device_specs.dart';
import 'package:all_fixs/Views/Features/DeviceInfo/General%20Info/general_info.dart';
import 'package:all_fixs/Views/Features/DeviceInfo/Location%20Info/location_info.dart';
import 'package:all_fixs/Views/Widgets/Features/DeviceInfo/gradient_button_container.dart';
import 'package:all_fixs/Views/Widgets/Features/DeviceInfo/top_banner.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:page_transition/page_transition.dart';

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
      body:Column(
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
              color: Colors.transparent,
              child: Row(
                children: [
                  Expanded(
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
                              clr: [
                                Color(0xFFFFA726),
                                Color(0xFFE65100),
                              ],
                              isgradientvertical: true,
                            ),
                          ),
                      ],
                    ),
                  ),
                 Expanded(
                      child: GradientButtonContainer(
                        Title: "General",
                        Overlayclr: Colors.teal.shade300,
                        clr: [Color(0xFFC89C2), Color(0xFF95DEDA)],
                        isgradientvertical: false,
                      ),
                    ),

                ],
              ),
            ),
          ),
          Expanded(
              child: Container(
            padding: EdgeInsets.all(10),
            child: Row(
              children: [
                Expanded(
                    child: GradientButtonContainer(
                      Title: "Device Specs",
                      Overlayclr: Color(0XFF01BCAA),
                      clr: [Color(0xFF02A9AF), Color(0xFF00CDAC)],
                      isgradientvertical: false,
                    ),
                  ),

                Expanded(
                  child: Column(
                    children: [
                      Expanded(
                          flex: 6,
                          child: GradientButtonContainer(
                            Title: "Location",
                            Overlayclr: Color(0XFF8159C6),
                            clr: [Color(0xFF8893D6), Color(0xFF8CA5DB)],
                            isgradientvertical: false,

                        ),
                      ),
                      Expanded(
                        flex: 10,
                        child: GradientButtonContainer(
                          Title: "Orientation",
                          Overlayclr: Color(0xFFE65100),
                          clr: [
                            Color(0xFFFFA726),
                            Color(0xFFE65100),
                          ],
                          isgradientvertical: true,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          )),
        ],
      ),
    );
  }
}
