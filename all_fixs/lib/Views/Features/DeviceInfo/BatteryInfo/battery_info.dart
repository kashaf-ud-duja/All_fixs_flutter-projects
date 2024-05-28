import 'package:all_fixs/Views/Widgets/Features/DeviceInfo/Battery%20Info/two_value_card.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sleek_circular_slider/sleek_circular_slider.dart';

class BatteryInfo extends StatelessWidget {
  const BatteryInfo({super.key});

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
      body: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color(0xFFFAD585),
                Color(0xFFF47A7D),
              ],
            ),
          ),
          child: Column(
            children: [
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "Battery Status",
                    style: GoogleFonts.nunito(
                      fontWeight: FontWeight.w900,
                      color: Colors.white,
                      fontSize: 20,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Expanded(
                child: Container(
                  // color: Colors.transparent,
                  child: Row(
                    children: [
                      Expanded(
                        child: Container(
                          // color: Colors.transparent,
                          child: Column(
                            children: [
                              Expanded(
                                  child: BatteryInfoTwoValueCard(
                                txt: 'Status',
                                value: 'Discharge',
                                subWidget: null, clr: null,
                              )),
                              Expanded(
                                  child: BatteryInfoTwoValueCard(
                                txt: 'Charging Type',
                                value: '-',
                                subWidget: null, clr: null,
                              )),
                              Container(
                                color: Colors.transparent,
                              )
                            ],
                          ),
                        ),
                      ),
                      Expanded(
                        child: Container(
                          // color: Colors.transparent,
                          child: Column(
                            children: [
                              Expanded(
                                flex: 2,
                                child: BatteryInfoTwoValueCard(
                                  txt: 'Charging Percentage',
                                  value: 'Discharge',
                                  subWidget: SleekCircularSlider(
                                    min: 0,
                                    max: 100,
                                    appearance: CircularSliderAppearance(
                                        customColors: CustomSliderColors(
                                            progressBarColor:
                                                Colors.orange[900]),
                                        infoProperties: InfoProperties(
                                          mainLabelStyle: GoogleFonts.nunito(
                                              fontWeight: FontWeight.w900),
                                        ),
                                        size: 80,
                                        customWidths: CustomSliderWidths(
                                            progressBarWidth: 10)),
                                    initialValue: 80,
                                  ), clr: null,
                                ),
                              ),
                              Expanded(
                                child: BatteryInfoTwoValueCard(
                                  txt: 'Temperature',
                                  value: '35.0',
                                  subWidget: null, clr: null,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Expanded(
                        child: Container(
                          // color: Colors.transparent,
                          child: Column(
                            children: [
                              Expanded(
                                  child: BatteryInfoTwoValueCard(
                                txt: 'Battery Health',
                                value: 'Good',
                                subWidget: null, clr: null,
                              )),
                              Expanded(
                                child: BatteryInfoTwoValueCard(
                                  txt: 'Battery Technology',
                                  value: 'li-poly',
                                  subWidget: null, clr: null,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Expanded(
                child: Container(
                  width: double.infinity,
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(50),
                        topRight: Radius.circular(50)),
                  ),
                  child: Column(
                    children: [
                      SizedBox(
                        height: 30,
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 30),
                        child: Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            "My Battery Status",
                            style: GoogleFonts.nunito(
                              fontSize: 20,
                              fontWeight: FontWeight.w900,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Expanded(
                        child: Container(
                          // color: Colors.transparent,
                          child: Row(
                            children: [
                              Expanded(
                                child: Container(
                                  // color: Colors.green,
                                  child: Column(
                                    children: [
                                      Expanded(
                                          child: BatteryInfoTwoValueCard(
                                        txt: 'Status',
                                        value: 'Discharge',
                                        subWidget: null, clr: Color(0xFFF47A7D),
                                      )),
                                      Expanded(
                                        child: BatteryInfoTwoValueCard(
                                          txt: 'Charging Type',
                                          value: '-',
                                          subWidget: null, clr: Color(0xFFF47A7D),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Expanded(
                                child: Container(
                                  // color: Colors.purple,
                                  child: Column(
                                    children: [
                                      Expanded(
                                        flex: 2,
                                        child: BatteryInfoTwoValueCard(
                                          txt: 'Charging Percentage',
                                          value: 'Discharge',
                                          subWidget: SleekCircularSlider(
                                            min: 0,
                                            max: 100,
                                            appearance:
                                                CircularSliderAppearance(
                                              customColors: CustomSliderColors(
                                                  progressBarColor:
                                                      Colors.orange[900]),
                                              infoProperties: InfoProperties(
                                                mainLabelStyle:
                                                    GoogleFonts.nunito(
                                                        fontWeight:
                                                            FontWeight.w900),
                                              ),
                                              size: 80,
                                              customWidths: CustomSliderWidths(
                                                  progressBarWidth: 10),
                                            ),
                                            initialValue: 80,
                                          ), clr: Color(0xFFF47A7D),
                                        ),
                                      ),
                                      Expanded(
                                        child: BatteryInfoTwoValueCard(
                                          txt: 'Temperature',
                                          value: '35.0',
                                          subWidget: null, clr: Color(0xFFF47A7D),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Expanded(
                                child: Container(
                                  // color: Colors.transparent,
                                  child: Column(
                                    children: [
                                      Expanded(
                                          child: BatteryInfoTwoValueCard(
                                        txt: 'Battery Health',
                                        value: 'Good',
                                        subWidget: null, clr: Color(0xFFF47A7D),
                                      )),
                                      Expanded(
                                        child: BatteryInfoTwoValueCard(
                                          txt: 'Battery Technology',
                                          value: 'li-poly',
                                          subWidget: null, clr: Color(0xFFF47A7D),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
