// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:sound_prank/AirHorn.dart';
import 'package:sound_prank/Breaking.dart';
import 'package:sound_prank/GunShoot.dart';
import 'package:sound_prank/Horror.dart';
import 'package:sound_prank/Police.dart';
import 'package:sound_prank/ResuableContainer.dart';
import 'package:sound_prank/Warning.dart';
import 'package:sound_prank/nextScreen.dart';

import 'Doorbell.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: HexColor("#16CDC4"),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                
                //POW
                Center(
                  child: Container(
                    margin: EdgeInsets.only(top: height / 7.5),
                    height: height / 6,
                    width: width / 1.8,
                    decoration: const BoxDecoration(
                      // color: Colors.white,
                      image: DecorationImage(
                        image: AssetImage("assets/images/Pow.png"),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),

                //Vadal
                Container(
                  margin: EdgeInsets.only(top: height / 25, left: width / 1.5),
                  height: height / 7.6,
                  width: width / 3.2,
                  decoration: const BoxDecoration(
                    // color: Colors.white,
                    image: DecorationImage(
                      image: AssetImage("assets/images/BottomBlasting.png"),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),

                //Vadal
                Container(
                  margin: EdgeInsets.only(top: height / 20, left: width / 25),
                  height: height / 7.6,
                  width: width / 3.2,
                  decoration: const BoxDecoration(
                    // color: Colors.white,
                    image: DecorationImage(
                      image: AssetImage("assets/images/BottomBlasting.png"),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ],
            ),

            const SizedBox(height: 12),

            Stack(
              children: [
                //For All Boxes
                Container(
                  // color: Color.fromARGB(255, 235, 59, 255),
                  height: height / 1.17,
                  width: width / 1,
                  child: Column(
                    children: [
                      //AirHorn & Breaking
                      Row(
                        children: [
                          //Air Horn
                          ResuableContainer(
                            marginLeft: width / 20,
                            marginRight: height / 48,
                            boxColor: "#FBD004",
                            img: "assets/images/AirHorn/AirHornMain.png",
                            imgHeight: height / 9,
                            imgWidth: width / 4,
                            title: "AirHorn",
                            function: () {
                              nextScreen(context, AirHorn());
                            },
                          ),

                          //Breaking
                          ResuableContainer(
                            marginLeft: width / 20,
                            marginRight: height / 48,
                            boxColor: "#53D46B",
                            img: "assets/images/Breaking/BreakingMain.png",
                            imgHeight: height / 9,
                            imgWidth: width / 4,
                            title: "Breaking",
                            function: () {
                              nextScreen(context, Breaking());
                            },
                          ),
                        ],
                      ),

                      //Doorbell & Gunshoot
                      Row(
                        children: [
                          //Doorbell
                          ResuableContainer(
                            marginLeft: width / 20,
                            marginRight: height / 48,
                            boxColor: "#FF7134",
                            img: "assets/images/Doorbell/DoorbellMain.png",
                            imgHeight: height / 9,
                            imgWidth: width / 4,
                            title: "Doorbell",
                            function: () {
                              nextScreen(context, Doorbell());
                            },
                          ),

                          //Gunshoot
                          ResuableContainer(
                            marginLeft: width / 20,
                            marginRight: height / 48,
                            boxColor: "#FDE2AC",
                            img: "assets/images/GunShoot/GunshootMain.png",
                            imgHeight: height / 9,
                            imgWidth: width / 4,
                            title: "Gunshoot",
                            function: () {
                              nextScreen(context, GunShoot());
                            },
                          ),
                        ],
                      ),

                      //Horror & Police
                      Row(
                        children: [
                          //Horror
                          ResuableContainer(
                            marginLeft: width / 20,
                            marginRight: height / 48,
                            boxColor: "#DBF227",
                            img: "assets/images/Horror/HorrorMain.png",
                            imgHeight: height / 9,
                            imgWidth: width / 4,
                            title: "Horror",
                            function: () {
                              nextScreen(context, Horror());
                            },
                          ),

                          //Police
                          ResuableContainer(
                            marginLeft: width / 20,
                            marginRight: height / 48,
                            boxColor: "#81F6D6",
                            img: "assets/images/Police/PoliceMain.png",
                            imgHeight: height / 9,
                            imgWidth: width / 4,
                            title: "Police",
                            function: () {
                              nextScreen(context, Police());
                            },
                          ),
                        ],
                      ),

                      //Warning
                      ResuableContainer(
                        marginLeft: width / 20,
                        marginRight: height / 48,
                        boxColor: "#F7E6CA",
                        img: "assets/images/Warning/WarningMain.png",
                        imgHeight: height / 9,
                        imgWidth: width / 4,
                        title: "Warning",
                        function: () {
                          nextScreen(context, Warning());
                        },
                      ),
                    ],
                  ),
                ),

                //Vadal
                Container(
                  margin: EdgeInsets.only(left: width / 27, top: height / 1.4),
                  height: height / 8.6,
                  width: width / 4.2,
                  decoration: const BoxDecoration(
                    // color: Colors.white,
                    image: DecorationImage(
                      image: AssetImage("assets/images/BottomBlasting.png"),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),

                //Vadal
                Container(
                  margin: EdgeInsets.only(left: width / 1.3, top: height / 1.4),
                  height: height / 8.6,
                  width: width / 4.2,
                  decoration: const BoxDecoration(
                    // color: Colors.white,
                    image: DecorationImage(
                      image: AssetImage("assets/images/BottomBlasting.png"),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 10),
          ],
        ),
      ),
    );
  }
}
