import 'package:all_fixs/Views/Widgets/Features/DeviceInfo/two_value_card.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DeviceSpecs extends StatelessWidget {
  const DeviceSpecs({super.key});

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
      body: Container(
        height: MediaQuery.of(context).size.height * 1.2,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Color(0xFFFFA726),
              Color(0xFFE65100),
            ],
          ),
        ),
        child: Column(
          children: [
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Device Specs:",
                  style: GoogleFonts.nunito(
                    fontWeight: FontWeight.w900,
                    color: Colors.white,
                    fontSize: 20,
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                      // color: Colors.black,
                      child: Column(
                        children: [
                          Expanded(
                            flex: 2,
                            child: Container(
                              child: TwoValueCard(
                                text: "Total RAM",
                                value: "6.0 GB",
                                clr: Colors.white,
                                subwidget: null,
                                txtclr: Colors.orange[900],
                              ),
                            ),
                          ),
                          Expanded(
                            flex: 3,
                            child: Container(
                              child: TwoValueCard(
                                text: "Refresh Rate",
                                value: "60 Hz",
                                clr: Colors.white,
                                subwidget: null,
                                txtclr: Colors.orange[900],
                              ),
                            ),
                          ),
                          Expanded(
                            flex: 2,
                            child: Container(
                              child: TwoValueCard(
                                text: "Fingerprint Sensor",
                                value: "Present",
                                clr: Colors.white,
                                subwidget: null,
                                txtclr: Colors.orange[900],
                              ),
                            ),
                          ),
                          Expanded(
                            flex: 2,
                            child: Container(
                              child: TwoValueCard(
                                text: "Fingerprint Sensor",
                                value: "yes",
                                clr: Colors.white,
                                subwidget: null,
                                txtclr: Colors.orange[900],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      // color: Colors.red,
                      child: Column(
                        children: [
                          Expanded(
                            flex: 2,
                            child: Container(
                              child: TwoValueCard(
                                text: "Internal Memory",
                                value: "59.36/116.0 GB",
                                clr: Colors.white,
                                subwidget: null,
                                txtclr: Colors.orange[900],
                              ),
                            ),
                          ),
                          Expanded(
                            flex: 2,
                            child: Container(
                              child: TwoValueCard(
                                text: "External Memory",
                                value: "N/A",
                                clr: Colors.white,
                                subwidget: null,
                                txtclr: Colors.orange[900],
                              ),
                            ),
                          ),
                          Expanded(
                            flex: 3,
                            child: Container(
                              child: TwoValueCard(
                                text: "Screen Size",
                                value: "6.06 inches",
                                clr: Colors.white,
                                subwidget: null,
                                txtclr: Colors.orange[900],
                              ),
                            ),
                          ),
                          Expanded(
                            flex: 2,
                            child: Container(
                              child: TwoValueCard(
                                text: "Resolution",
                                value: "2134*1080",
                                clr: Colors.white,
                                subwidget: null,
                                txtclr: Colors.orange[900],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
