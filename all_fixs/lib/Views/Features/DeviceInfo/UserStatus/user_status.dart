import 'package:all_fixs/Views/Widgets/Features/DeviceInfo/User%20Info/one_value_card.dart';
import 'package:all_fixs/Views/Widgets/Features/DeviceInfo/two_value_card.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';

class UserStatus extends StatefulWidget {
  @override
  State<UserStatus> createState() => _UserStatusState();
}

class _UserStatusState extends State<UserStatus> {
  List<String> Status1 = [
    "Away",
    "Don't Disturb",
    "Driving",
    "Eating",
  ];

  List<String> Status2 = [
    "Meeting",
    "Outdoors",
    "Sleeping",
    "Working",
  ];
  String selectedStatus = "Away";

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
          decoration: BoxDecoration(
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
                  // color: Colors.blue[900],
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
                            "Friend's Status",
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
                          color: Colors.transparent,
                          child: Row(
                            children: [
                              Expanded(
                                child: Column(
                                  children: [
                                    Expanded(
                                      child: Container(
                                        color: Colors.transparent,
                                        child: TwoValueCard(
                                          text: "User is",
                                          txtclr: Colors.orange[900],
                                          value: "Online",
                                          subwidget: null,
                                          clr: null,
                                        ),
                                      ),
                                    ),
                                    Expanded(
                                      child: Container(
                                        color: Colors.transparent,
                                        child: TwoValueCard(
                                          text: "Last APP Action",
                                          txtclr: Colors.orange[900],
                                          value: "2 Minutes Ago",
                                          subwidget: null,
                                          clr: null,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Expanded(
                                  child: Container(
                                color: Colors.transparent,
                                child: TwoValueCard(
                                  text: "User Status",
                                  txtclr: Colors.orange[900],
                                  value: "Driving",
                                  subwidget: null,
                                  clr: null,
                                ),
                              ))
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
                        topRight: Radius.circular(50)),
                  ),
                  child: Column(
                    children: [
                      SizedBox(
                        height: 20,
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 20),
                        child: Align(
                          alignment: Alignment.center,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "My Status is",
                                style: GoogleFonts.nunito(
                                  fontWeight: FontWeight.w900,
                                  fontSize: 18,
                                ),
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Text(
                                "Eating",
                                textAlign: TextAlign.center,
                                style: GoogleFonts.nunito(
                                  fontWeight: FontWeight.w900,
                                  fontSize: 18,
                                  color: Colors.orange[900],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 50,
                      ),
                      Expanded(
                          child: ListView.builder(
                        itemCount: Status1.length,
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context, index) {
                          return Column(
                            children: [
                              GestureDetector(
                                onTap: () {
                                  setState(() {
                                    selectedStatus = Status1[index];
                                  });
                                },
                                child: OneValueCard(
                                  value: Status1[index],
                                  clr: selectedStatus == Status1[index]
                                      ? Color.fromRGBO(230, 81, 0, 1)
                                      : Color(0xFFFFA726), txtclr: null,
                                ),
                              ),
                              GestureDetector(
                                onTap: () {
                                  setState(() {
                                    selectedStatus = Status2[index];
                                  });
                                },
                                child: OneValueCard(
                                  value: Status2[index],
                                  clr: selectedStatus == Status2[index]
                                      ? Color.fromRGBO(230, 81, 0, 1)
                                      : Color(0xFFFFA726), txtclr: null,
                                ),
                              ),
                            ],
                          );
                        },
                      ))
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
