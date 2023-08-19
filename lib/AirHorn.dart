import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:sound_prank/ResuableCircle.dart';

class AirHorn extends StatefulWidget {
  @override
  State<AirHorn> createState() => _AirHornState();
}

class _AirHornState extends State<AirHorn> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return SafeArea(
      child: Scaffold(
        backgroundColor: HexColor("#FDE2AC"),
        //appbar
        appBar: AppBar(
          backgroundColor: HexColor("#FDE2AC"),
          elevation: 0,
          title: const Padding(
            padding: EdgeInsets.only(left: 65),
            child: Text(
              "AirHorn",
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
                          boxColor: "#FBD004",
                          img: "assets/images/AirHorn/AirHorn1.png",
                          imgHeight: 90,
                          imgWidth: 90,
                          imgMarginLeft: 10,
                          imgMarginTop: 28,
                          title: "AirHorn 1",
                          titlePaddingLeft: 18,
                          titlePaddingTop: 3,
                          function: () {
                            AudioPlayer().play(
                                AssetSource('sounds/AirHorn/AirHorn1.mp3'));
                          },
                        ),

                        //Sound-2
                        ResuableCircle(
                          marginLeft: width / 11,
                          margintop: 10,
                          boxColor: "#FBD004",
                          img: "assets/images/AirHorn/AirHorn2.png",
                          imgHeight: 90,
                          imgWidth: 90,
                          imgMarginLeft: 10,
                          imgMarginTop: 28,
                          title: "AirHorn 2",
                          titlePaddingLeft: 35,
                          titlePaddingTop: 3,
                          function: () {
                            AudioPlayer().play(
                                AssetSource('sounds/AirHorn/AirHorn2.mp3'));
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
                          boxColor: "#FBD004",
                          img: "assets/images/AirHorn/AirHorn3.png",
                          imgHeight: 100,
                          imgWidth: 100,
                          imgMarginLeft: 6,
                          imgMarginTop: 20,
                          title: "AirHorn 3",
                          titlePaddingLeft: 18,
                          titlePaddingTop: 3,
                          function: () {
                            AudioPlayer().play(
                                AssetSource('sounds/AirHorn/AirHorn3.mp3'));
                          },
                        ),

                        //Sound-4
                        ResuableCircle(
                          marginLeft: width / 11,
                          margintop: 10,
                          boxColor: "#FBD004",
                          img: "assets/images/AirHorn/AirHorn4.png",
                          imgHeight: 100,
                          imgWidth: 100,
                          imgMarginLeft: 5,
                          imgMarginTop: 23,
                          title: "AirHorn 4",
                          titlePaddingLeft: 35,
                          titlePaddingTop: 3,
                          function: () {
                            AudioPlayer().play(
                                AssetSource('sounds/AirHorn/AirHorn4.mp3'));
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
                          boxColor: "#FBD004",
                          img: "assets/images/AirHorn/AirHorn5.png",
                          imgHeight: 90,
                          imgWidth: 90,
                          imgMarginLeft: 10,
                          imgMarginTop: 25,
                          title: "AirHorn 5",
                          titlePaddingLeft: 18,
                          titlePaddingTop: 3,
                          function: () {
                            AudioPlayer().play(
                                AssetSource('sounds/AirHorn/AirHorn5.mp3'));
                          },
                        ),

                        //Sound-6
                        ResuableCircle(
                          marginLeft: width / 11,
                          margintop: 10,
                          boxColor: "#FBD004",
                          img: "assets/images/AirHorn/AirHorn6.png",
                          imgHeight: 100,
                          imgWidth: 100,
                          imgMarginLeft: 3,
                          imgMarginTop: 23,
                          title: "AirHorn 6",
                          titlePaddingLeft: 35,
                          titlePaddingTop: 3,
                          function: () {
                            AudioPlayer().play(
                                AssetSource('sounds/AirHorn/AirHorn6.mp3'));
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
                          boxColor: "#FBD004",
                          img: "assets/images/AirHorn/AirHorn7.png",
                          imgHeight: 90,
                          imgWidth: 90,
                          imgMarginLeft: 10,
                          imgMarginTop: 25,
                          title: "AirHorn 7",
                          titlePaddingLeft: 18,
                          titlePaddingTop: 3,
                          function: () {
                            AudioPlayer().play(
                                AssetSource('sounds/AirHorn/AirHorn7.mp3'));
                          },
                        ),

                        //Sound-8
                        ResuableCircle(
                          marginLeft: width / 11,
                          margintop: 10,
                          boxColor: "#FBD004",
                          img: "assets/images/AirHorn/AirHorn8.png",
                          imgHeight: 100,
                          imgWidth: 100,
                          imgMarginLeft: 3,
                          imgMarginTop: 23,
                          title: "AirHorn 8",
                          titlePaddingLeft: 35,
                          titlePaddingTop: 3,
                          function: () {
                            AudioPlayer().play(
                                AssetSource('sounds/AirHorn/AirHorn8.mp3'));
                          },
                        ),
                      ],
                    ),

                    //Sound-9 & Sound-10
                    Row(
                      children: [
                        //Sound-9
                        ResuableCircle(
                          marginLeft: width / 25,
                          margintop: 10,
                          boxColor: "#FBD004",
                          img: "assets/images/AirHorn/AirHorn9.png",
                          imgHeight: 90,
                          imgWidth: 90,
                          imgMarginLeft: 10,
                          imgMarginTop: 25,
                          title: "AirHorn 9",
                          titlePaddingLeft: 18,
                          titlePaddingTop: 3,
                          function: () {
                            AudioPlayer().play(
                                AssetSource('sounds/AirHorn/AirHorn9.mp3'));
                          },
                        ),

                        //Sound-10
                        ResuableCircle(
                          marginLeft: width / 11,
                          margintop: 10,
                          boxColor: "#FBD004",
                          img: "assets/images/AirHorn/AirHorn10.png",
                          imgHeight: 100,
                          imgWidth: 100,
                          imgMarginLeft: 3,
                          imgMarginTop: 23,
                          title: "AirHorn 10",
                          titlePaddingLeft: 35,
                          titlePaddingTop: 3,
                          function: () {
                            AudioPlayer().play(
                                AssetSource('sounds/AirHorn/AirHorn10.mp3'));
                          },
                        ),
                      ],
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
