import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:sound_prank/ResuableCircle.dart';

class Warning extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
        backgroundColor: HexColor("#BACB95"),
        //appbar
        appBar: AppBar(
          backgroundColor: HexColor("#BACB95"),
          elevation: 0,
          title: const Padding(
            padding: EdgeInsets.only(left: 70),
            child: Text(
              "Warning",
              style: TextStyle(
                fontFamily: "Mitr",
                fontWeight: FontWeight.w400,
                fontSize: 30,
                color: Colors.black,
              ),
            ),
          ),
          leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(
              Icons.arrow_back,
              size: 30,
              color: Colors.black,
            ),
          ),
        ),

        body: Column(
          children: [
            Container(
              margin: const EdgeInsets.only(top: 10),
              height: height / 1.2,
              width: width / 1,
              // color: Colors.purple,
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    //Vadal's
                    Row(
                      children: [
                        //Vadal-1
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            height: height / 7.6,
                            width: width / 3.2,
                            decoration: const BoxDecoration(
                              // color: Colors.white,
                              image: DecorationImage(
                                image: AssetImage(
                                    "assets/images/BottomBlasting.png"),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ),

                        //Vadal-2
                        Padding(
                          padding: const EdgeInsets.only(left: 110),
                          child: Container(
                            height: height / 7.6,
                            width: width / 3.2,
                            decoration: const BoxDecoration(
                              // color: Colors.white,
                              image: DecorationImage(
                                image: AssetImage(
                                    "assets/images/BottomBlasting.png"),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),

                    //Sound-1 & Sound-2
                    Row(
                      children: [
                        //Sound-1
                        ResuableCircle(
                          marginLeft: width / 25,
                          margintop: 10,
                          boxColor: "#F7E6CA",
                          img: "assets/images/Warning/WarningMain.png",
                          imgHeight: 90,
                          imgWidth: 90,
                          imgMarginLeft: 4,
                          imgMarginTop: 25,
                          title: "Warning 1",
                          titlePaddingLeft: 18,
                          titlePaddingTop: 3,
                          function: () {
                            AudioPlayer().play(
                                AssetSource('sounds/Warning/Warning1.mp3'));
                          },
                        ),

                        //Sound-2
                        ResuableCircle(
                          marginLeft: width / 13,
                          margintop: 10,
                          boxColor: "#F7E6CA",
                          img: "assets/images/Warning/WarningMain.png",
                          imgHeight: 90,
                          imgWidth: 90,
                          imgMarginLeft: 4,
                          imgMarginTop: 25,
                          title: "Warning 2",
                          titlePaddingLeft: 30,
                          titlePaddingTop: 3,
                          function: () {
                            AudioPlayer().play(
                                AssetSource('sounds/Warning/Warning2.mp3'));
                          },
                        ),
                      ],
                    ),

                    //Sound-3 & Sound-4
                    Row(
                      children: [
                        //Sound-3
                        ResuableCircle(
                          marginLeft: width / 25,
                          margintop: 10,
                          boxColor: "#F7E6CA",
                          img: "assets/images/Warning/WarningMain.png",
                          imgHeight: 90,
                          imgWidth: 90,
                          imgMarginLeft: 4,
                          imgMarginTop: 25,
                          title: "Warning 3",
                          titlePaddingLeft: 18,
                          titlePaddingTop: 3,
                          function: () {
                            AudioPlayer().play(
                                AssetSource('sounds/Warning/Warning3.mp3'));
                          },
                        ),

                        //Sound-4
                        ResuableCircle(
                          marginLeft: width / 13,
                          margintop: 10,
                          boxColor: "#F7E6CA",
                          img: "assets/images/Warning/WarningMain.png",
                          imgHeight: 90,
                          imgWidth: 90,
                          imgMarginLeft: 4,
                          imgMarginTop: 25,
                          title: "Warning 4",
                          titlePaddingLeft: 30,
                          titlePaddingTop: 3,
                          function: () {
                            AudioPlayer().play(
                                AssetSource('sounds/Warning/Warning4.mp3'));
                          },
                        ),
                      ],
                    ),

                    //Sound-5 & Sound-6
                    Row(
                      children: [
                        //Sound-5
                        ResuableCircle(
                          marginLeft: width / 25,
                          margintop: 10,
                          boxColor: "#F7E6CA",
                          img: "assets/images/Warning/WarningMain.png",
                          imgHeight: 90,
                          imgWidth: 90,
                          imgMarginLeft: 4,
                          imgMarginTop: 25,
                          title: "Warning 5",
                          titlePaddingLeft: 18,
                          titlePaddingTop: 3,
                          function: () {
                            AudioPlayer().play(
                                AssetSource('sounds/Warning/Warning5.mp3'));
                          },
                        ),

                        //Sound-6
                        ResuableCircle(
                          marginLeft: width / 13,
                          margintop: 10,
                          boxColor: "#F7E6CA",
                          img: "assets/images/Warning/WarningMain.png",
                          imgHeight: 90,
                          imgWidth: 90,
                          imgMarginLeft: 4,
                          imgMarginTop: 25,
                          title: "Warning 6",
                          titlePaddingLeft: 30,
                          titlePaddingTop: 3,
                          function: () {
                            AudioPlayer().play(
                                AssetSource('sounds/Warning/Warning6.mp3'));
                          },
                        ),
                      ],
                    ),

                    //Sound-7 & Sound-8
                    Row(
                      children: [
                        //Sound-7
                        ResuableCircle(
                          marginLeft: width / 25,
                          margintop: 10,
                          boxColor: "#F7E6CA",
                          img: "assets/images/Warning/WarningMain.png",
                          imgHeight: 90,
                          imgWidth: 90,
                          imgMarginLeft: 4,
                          imgMarginTop: 25,
                          title: "Warning 7",
                          titlePaddingLeft: 18,
                          titlePaddingTop: 3,
                          function: () {
                            AudioPlayer().play(
                                AssetSource('sounds/Warning/Warning5.mp3'));
                          },
                        ),

                        //Sound-8
                        ResuableCircle(
                          marginLeft: width / 13,
                          margintop: 10,
                          boxColor: "#F7E6CA",
                          img: "assets/images/Warning/WarningMain.png",
                          imgHeight: 90,
                          imgWidth: 90,
                          imgMarginLeft: 4,
                          imgMarginTop: 25,
                          title: "Warning 8",
                          titlePaddingLeft: 30,
                          titlePaddingTop: 3,
                          function: () {
                            AudioPlayer().play(
                                AssetSource('sounds/Warning/Warning6.mp3'));
                          },
                        ),
                      ],
                    ),

                    //Sound-9
                    ResuableCircle(
                      marginLeft: width / 20,
                      margintop: 10,
                      boxColor: "#F7E6CA",
                      img: "assets/images/Warning/WarningMain.png",
                      imgHeight: 90,
                      imgWidth: 90,
                      imgMarginLeft: 4,
                      imgMarginTop: 25,
                      title: "Warning 9",
                      titlePaddingLeft: 30,
                      titlePaddingTop: 3,
                      function: () {
                        AudioPlayer()
                            .play(AssetSource('sounds/Warning/Warning9.mp3'));
                      },
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
