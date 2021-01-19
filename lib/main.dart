import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:myportfolio/components/projectCards.dart';
import 'package:myportfolio/navbar/navbar.dart';
import 'package:url_launcher/url_launcher.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  final List projectList = [
    {
      "title": "Navaani",
      "subtitle":
          "It Ecommerce App to Sell the Cloths and Jewelry\nUsed the nodeJs And MongoDb as Backend",
    },
    {
      "title": "File Manager",
      "subtitle": "File manager using path Provider Library In Flutter",
    },
    {
      "title": "NotePad",
      "subtitle":
          "Store the Notes permanantly In Mobile\nI used Sqflite As Backend",
    },
    {
      "title": "Society App",
      "subtitle": "It Ecommerce App Used the FireBase As Backend ",
    },
    {
      "title": "Music Player",
      "subtitle": "Music Player using path Provider Library In Flutter",
    },
    {
      "title": "HLS video Downloader",
      "subtitle":
          "Download the HLS type video url as videos\nusing flask as backend",
    },
  ];
  final List pythonprojectList = [
    {
      "title": "Face Controlled VideoPlayer",
      "subtitle":
          "it controlls the volume and video playback by using faceGestures",
    },
    {
      "title": "HLS Video downloader Api",
      "subtitle": "Download the HLS type videos from m3u8s type urls",
    },
    {
      "title": "HLS Video downloader Api",
      "subtitle": "Download the HLS type videos from m3u8s type urls",
    },
    {
      "title": "HLS Video downloader Api",
      "subtitle": "Download the HLS type videos from m3u8s type urls",
    },
  ];
  Future<void> _launchInBrowser(String url) async {
    if (await canLaunch(url)) {
      await launch(
        url,
        forceSafariVC: false,
        forceWebView: false,
        headers: <String, String>{'my_header_key': 'my_header_value'},
      );
    } else {
      throw 'Could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    var pWidth = MediaQuery.of(context).size.width;
    var pHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 50,
            ),
            DesktopNavBar(pWidth: pWidth),
            SizedBox(
              height: pHeight * 0.1,
            ),
            Row(
              children: [
                SizedBox(
                  width: pWidth * 0.2,
                ),
                Image.asset(
                  "images/typing.jpg",
                  height: pHeight * 0.4,
                  width: pWidth * 0.4,
                ),
                Column(
                  children: [
                    Text(
                      "Full Stack",
                      style: GoogleFonts.purplePurse(fontSize: 40),
                    ),
                    Text(
                      "Flutter",
                      style: GoogleFonts.purplePurse(
                          fontSize: 40,
                          color: Color.fromRGBO(255, 97, 84, 0.8)),
                    ),
                    Text(
                      "And",
                      style: GoogleFonts.purplePurse(fontSize: 40),
                    ),
                    Text(
                      "Python Developer",
                      style: GoogleFonts.purplePurse(
                          fontSize: 40,
                          color: Color.fromRGBO(255, 97, 84, 0.8)),
                    ),
                  ],
                )
              ],
            ),
            Stack(
              children: [
                Container(
                  width: pWidth,
                  height: pHeight * 0.4,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      // SizedBox(
                      //   width: pWidth * 0.15,
                      // ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          // SizedBox(
                          //   height: pHeight * 0.009,
                          // ),
                          Text(
                            "Hi, I'm Vidya. Nice to meet you.",
                            style: GoogleFonts.caveat(
                                fontSize: 40.0,
                                fontWeight: FontWeight.bold,
                                color: Color.fromRGBO(250, 250, 250, 1)),
                          ),
                          SizedBox(
                            height: pHeight * 0.01,
                          ),
                          Text(
                            "I am very Passionate to build Cross-Platform Native App Development using \nFlutter and Dart with 1 year of real world projrct experience and very \nEnthusiastic about Artificial Intelligence",
                            style: GoogleFonts.caveat(
                              fontSize: 35.0,
                              color: Color.fromRGBO(250, 250, 250, 1),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        width: pWidth * 0.1,
                      ),
                      CircleAvatar(
                        radius: 90,
                        backgroundColor: Color.fromRGBO(50, 90, 101, 1),
                        child: CircleAvatar(
                          radius: 86,
                          backgroundImage: AssetImage("images/vidya.jpg"),
                        ),
                      )
                    ],
                  ),
                  decoration: BoxDecoration(
                    color: Color.fromRGBO(255, 97, 84, 0.8),
                  ),
                ),
                // SizedBox(
                //   height: pHeight * 0.2,
                // ),
                Padding(
                  padding: EdgeInsets.only(top: pWidth * 0.18),
                  child: Align(
                    alignment: Alignment.bottomCenter,
                    child: Container(
                      height: pHeight * 0.54,
                      width: pWidth * 0.9,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Column(
                            children: [
                              Padding(
                                padding: EdgeInsets.only(
                                    left: pWidth * 0.04, top: pHeight * 0.08),
                                child: Image.asset(
                                  "images/pencil.png",
                                  height: pHeight * 0.1,
                                  width: pWidth * 0.1,
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(
                                    left: pWidth * 0.03, top: pHeight * 0.01),
                                child: Text(
                                  "   UI/UX\nDESIGNER",
                                  style: GoogleFonts.novaSquare(
                                    fontSize: 20.0,
                                    fontWeight: FontWeight.bold,
                                    color: Color.fromRGBO(255, 97, 84, 0.8),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(
                                    left: pWidth * 0.05, top: pHeight * 0.01),
                                child: Text(
                                  "       I value simple content structure,\nclean design patterns, and thoughtful interactions.",
                                  style: GoogleFonts.novaSquare(
                                    fontSize: 15.0,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black87,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(
                                    left: pWidth * 0.03, top: pHeight * 0.01),
                                child: Text(
                                  "   Things I enjoy designing",
                                  style: GoogleFonts.novaSquare(
                                    fontSize: 20.0,
                                    fontWeight: FontWeight.bold,
                                    color: Color.fromRGBO(255, 97, 84, 0.8),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(
                                    left: pWidth * 0.02, top: pHeight * 0.01),
                                child: Text(
                                  "       UX, UI, Web, Mobile, Apps, .",
                                  style: GoogleFonts.novaSquare(
                                    fontSize: 15.0,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black87,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(
                                    left: pWidth * 0.02, top: pHeight * 0.01),
                                child: Text(
                                  "   Design Tools:",
                                  style: GoogleFonts.novaSquare(
                                    fontSize: 20.0,
                                    fontWeight: FontWeight.bold,
                                    color: Color.fromRGBO(255, 97, 84, 0.8),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(
                                    left: pWidth * 0.01, top: pHeight * 0.01),
                                child: Text(
                                  "       Figma",
                                  style: GoogleFonts.novaSquare(
                                    fontSize: 16.0,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black87,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            width: pWidth * 0.03,
                          ),
                          VerticalDivider(
                            color: Colors.black54,
                            thickness: 1,
                          ),
                          Column(
                            children: [
                              Padding(
                                padding: EdgeInsets.only(
                                    left: pWidth * 0.02, top: pHeight * 0.08),
                                child: Image.asset(
                                  "images/codeIcon.png",
                                  height: pHeight * 0.1,
                                  width: pWidth * 0.1,
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(
                                    left: pWidth * 0.03, top: pHeight * 0.01),
                                child: Text(
                                  "   Front-end and Back-end  \n          Developer",
                                  style: GoogleFonts.novaSquare(
                                    fontSize: 20.0,
                                    fontWeight: FontWeight.bold,
                                    color: Color.fromRGBO(255, 97, 84, 0.8),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(
                                    left: pWidth * 0.05, top: pHeight * 0.01),
                                child: Text(
                                  "       I like to code things from scratch\nand enjoy bringing ideas to life in mobile apps",
                                  style: GoogleFonts.novaSquare(
                                    fontSize: 15.0,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black87,
                                  ),
                                ),
                              ),
                              Row(
                                children: [
                                  Column(
                                    children: [
                                      Padding(
                                        padding: EdgeInsets.only(
                                            left: pWidth * 0.03,
                                            top: pHeight * 0.01),
                                        child: Text(
                                          "   Languages I speak:",
                                          style: GoogleFonts.novaSquare(
                                            fontSize: 20.0,
                                            fontWeight: FontWeight.bold,
                                            color: Color.fromRGBO(
                                                255, 97, 84, 0.8),
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsets.only(
                                            left: pWidth * 0.02,
                                            top: pHeight * 0.01),
                                        child: Text(
                                          "       Python,Dart,JavaScript",
                                          style: GoogleFonts.novaSquare(
                                            fontSize: 15.0,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.black87,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  Column(
                                    children: [
                                      Padding(
                                        padding: EdgeInsets.only(
                                            left: pWidth * 0.03,
                                            top: pHeight * 0.01),
                                        child: Text(
                                          "   Technologies I learned",
                                          style: GoogleFonts.novaSquare(
                                            fontSize: 20.0,
                                            fontWeight: FontWeight.bold,
                                            color: Color.fromRGBO(
                                                255, 97, 84, 0.8),
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsets.only(
                                            left: pWidth * 0.02,
                                            top: pHeight * 0.01),
                                        child: Text(
                                          "       Flutter,GitHub,REST,Artificial Intelligence",
                                          style: GoogleFonts.novaSquare(
                                            fontSize: 15.0,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.black87,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                              Padding(
                                padding: EdgeInsets.only(
                                    left: pWidth * 0.002, top: pHeight * 0.04),
                                child: Text(
                                  "   Dev Tools:",
                                  style: GoogleFonts.novaSquare(
                                    fontSize: 20.0,
                                    fontWeight: FontWeight.bold,
                                    color: Color.fromRGBO(255, 97, 84, 0.8),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(
                                    left: pWidth * 0.001, top: pHeight * 0.01),
                                child: Text(
                                  "       VsCode,Github,Terminal",
                                  style: GoogleFonts.novaSquare(
                                    fontSize: 16.0,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black87,
                                  ),
                                ),
                              )
                            ],
                          ),
                        ],
                      ),
                      // alignment: Alignment.center,
                      // height: pHeight * 0.6,
                      // width: pWidth * 0.5,
                      decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            spreadRadius: 5,
                            blurRadius: 7,
                            offset: Offset(0, 3), // changes position of shadow
                          ),
                        ],
                        color: Colors.white,
                        borderRadius: BorderRadiusDirectional.circular(10),
                      ),
                    ),
                  ),
                )
              ],
            ),
            Padding(
              padding:
                  EdgeInsets.only(left: pWidth * 0.002, top: pHeight * 0.04),
              child: Card(
                borderOnForeground: true,
                // color: Colors.white60,
                elevation: 10,
                child: Padding(
                  padding: EdgeInsets.all(pWidth * 0.01),
                  child: Text(
                    "My Recent Works",
                    style: GoogleFonts.novaSquare(
                      fontSize: 30.0,
                      // fontWeight: FontWeight.bold,
                      color: Color.fromRGBO(255, 97, 84, 0.8),
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding:
                  EdgeInsets.only(left: pWidth * 0.01, top: pHeight * 0.02),
              child: Text(
                "Here are a few design projects I've worked on recently.",
                style: GoogleFonts.novaSquare(
                  fontSize: 30.0,
                  // fontWeight: FontWeight.bold,
                  color: Colors.black87,
                ),
              ),
            ),
            SizedBox(
              height: pHeight * 0.08,
            ),
            Row(
              children: [
                Container(
                  height: pHeight * 0.3,
                  width: pHeight * 0.3,
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 5,
                        blurRadius: 7,
                        offset: Offset(0, 3), // changes position of shadow
                      ),
                    ],
                    color: Colors.white,
                    borderRadius: BorderRadiusDirectional.circular(10),
                  ),
                  child: Center(
                    child: Text(
                      "Flutter\nProjects",
                      style: GoogleFonts.novaSquare(
                        fontSize: 30.0,
                        fontWeight: FontWeight.bold,
                        color: Color.fromRGBO(255, 97, 84, 0.8),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    height: pHeight * 0.3,
                    width: pWidth,
                    child: ListView.builder(
                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                      itemCount: projectList.length,
                      itemBuilder: (BuildContext context, int index) {
                        return Padding(
                          padding: EdgeInsets.symmetric(horizontal: 10),
                          child: ProjectCards(
                            pWidth: pWidth,
                            title: projectList[index]["title"],
                            subtitle: projectList[index]["subtitle"],
                          ),
                        );
                      },
                    ),
                  ),
                )
              ],
            ),
            SizedBox(
              height: pHeight * 0.08,
            ),
            Row(
              children: [
                Container(
                  height: pHeight * 0.3,
                  width: pHeight * 0.3,
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 5,
                        blurRadius: 7,
                        offset: Offset(0, 3), // changes position of shadow
                      ),
                    ],
                    color: Colors.white,
                    borderRadius: BorderRadiusDirectional.circular(10),
                  ),
                  child: Center(
                    child: Text(
                      "Python\nProjects",
                      style: GoogleFonts.novaSquare(
                        fontSize: 30.0,
                        fontWeight: FontWeight.bold,
                        color: Color.fromRGBO(255, 97, 84, 0.8),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    height: pHeight * 0.25,
                    width: pWidth,
                    child: ListView.builder(
                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                      itemCount: pythonprojectList.length,
                      itemBuilder: (BuildContext context, int index) {
                        return Padding(
                          padding: EdgeInsets.symmetric(horizontal: 10),
                          child: ProjectCards(
                            pWidth: pWidth,
                            title: pythonprojectList[index]["title"],
                            subtitle: pythonprojectList[index]["subtitle"],
                          ),
                        );
                      },
                    ),
                  ),
                )
              ],
            ),
            SizedBox(
              height: pHeight * 0.08,
            ),
            Text(
              "Thank You For Watching.",
              style: GoogleFonts.novaSquare(
                fontSize: 30.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: pHeight * 0.08,
            ),
            Container(
              color: Color.fromRGBO(255, 97, 84, 0.8),
              height: pHeight * 0.25,
              child: Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    GestureDetector(
                      onTap: () {
                        _launchInBrowser("https://github.com/vidya-hub");
                      },
                      child: Icon(
                        AntDesign.github,
                        color: Colors.white,
                        size: 50,
                      ),
                    ),
                    SizedBox(
                      width: pWidth * 0.01,
                    ),
                    GestureDetector(
                      onTap: () {
                        _launchInBrowser(
                            "https://www.linkedin.com/in/vidya-sagar-129b17130/");
                      },
                      child: Icon(
                        AntDesign.linkedin_square,
                        color: Colors.white,
                        size: 50,
                      ),
                    ),
                    SizedBox(
                      width: pWidth * 0.01,
                    ),
                    Icon(
                      AntDesign.instagram,
                      color: Colors.white,
                      size: 50,
                    ),
                    SizedBox(
                      width: pWidth * 0.01,
                    ),
                    Icon(
                      Icons.email_outlined,
                      color: Colors.white,
                      size: 60,
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
