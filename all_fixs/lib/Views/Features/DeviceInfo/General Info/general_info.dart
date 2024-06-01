import 'package:all_fixs/Views/Widgets/Features/DeviceInfo/General%20Info/two_widget_card.dart';
import 'package:all_fixs/Views/Widgets/Features/DeviceInfo/two_value_card.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class GeneralInfo extends StatelessWidget {
  const GeneralInfo({super.key});

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
          height: MediaQuery.of(context).size.height * 1.2,
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color(0xFFFFA726),
                Color(0xFFE65100),
              ],
            ),
          ),
          child: Column(
            children: [
              Expanded(
                child: Container(
                  // color: Colors.orange[900],
                  child: Column(
                    children: [
                      SizedBox(
                        height: 20,
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 20),
                        child: Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            "General Info:",
                            style: GoogleFonts.nunito(
                              fontWeight: FontWeight.w900,
                              color: Colors.white,
                              fontSize: 20,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Expanded(
                        child: Container(
                          child: Row(
                            children: [
                              Expanded(
                                child: Container(
                                  // color: Colors.yellow,
                                  child: Column(
                                    children: [
                                      Expanded(
                                        child: TwoValueCard(
                                          text: "Screen State",
                                          value: "Unlocked",
                                          clr: Colors.white,
                                          subwidget: null,
                                          txtclr: Colors.orange[900],
                                        ),
                                      ),
                                      Expanded(
                                        flex: 2,
                                        child: TwoWidgetCard(
                                          txt1: 'System Volume',
                                          txtclr: Colors.black,
                                          value1: "2/7",
                                          valueclr: null,
                                          cardclr: Colors.white,
                                          subWidget1: null,
                                          txt2: 'Media Volume',
                                          value2: '4/7',
                                          subWidget2: null,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Expanded(
                                child: Container(
                                  // color: Colors.pink,
                                  child: Column(
                                    children: [
                                      Expanded(
                                        flex: 2,
                                        child: TwoWidgetCard(
                                          txt1: 'Light Activity',
                                          txtclr: Colors.black,
                                          value1: "Dim Light",
                                          valueclr: Colors.orange[900],
                                          subWidget1: null,
                                          txt2: 'Light Intensity',
                                          value2: '4',
                                          subWidget2: null,
                                          cardclr: Colors.white,
                                        ),
                                      ),
                                      Expanded(
                                        child: TwoValueCard(
                                          text: "Brightness",
                                          value: "9.88%",
                                          clr: Colors.white,
                                          subwidget: null,
                                          txtclr: Colors.orange[900],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  width: double.infinity,
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(50),
                      topRight: Radius.circular(50),
                    ),
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
                            "My Genral Info:",
                            style: GoogleFonts.nunito(
                              fontSize: 20,
                              fontWeight: FontWeight.w900,
                              color: Colors.grey[700],
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Expanded(
                        child: Container(
                          child: Row(
                            children: [
                              Expanded(
                                child: Container(
                                  // color: Colors.yellow,
                                  child: Column(
                                    children: [
                                      Expanded(
                                        child: TwoValueCard(
                                          text: "Screen State",
                                          value: "Unlocked",
                                          clr: Colors.orange[900],
                                          subwidget: null,
                                          txtclr: Colors.white,
                                        ),
                                      ),
                                      Expanded(
                                        flex: 2,
                                        child: TwoWidgetCard(
                                          txt1: 'System Volume',
                                          txtclr: Colors.black,
                                          value1: "2/7",
                                          valueclr: Colors.white,
                                          cardclr: Colors.orange[900],
                                          subWidget1: null,
                                          txt2: 'Media Volume',
                                          value2: '4/7',
                                          subWidget2: null,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Expanded(
                                child: Container(
                                  // color: Colors.pink,
                                  child: Column(
                                    children: [
                                      Expanded(
                                        flex: 2,
                                        child: TwoWidgetCard(
                                          txt1: 'Light Activity',
                                          txtclr: Colors.black,
                                          value1: "Dim Light",
                                          valueclr: Colors.white,
                                          subWidget1: null,
                                          txt2: 'Light Intensity',
                                          value2: '4',
                                          cardclr: Colors.orange[900],
                                          subWidget2: null,
                                        ),
                                      ),
                                      Expanded(
                                        child: TwoValueCard(
                                          text: "Brightness",
                                          value: "9.88%",
                                          clr: Colors.orange[900],
                                          subwidget: null,
                                          txtclr: Colors.white,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      )
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
