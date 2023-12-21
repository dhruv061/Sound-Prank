import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:sound_prank/ResuableCircle.dart';

class Warning extends StatefulWidget {
  @override
  State<Warning> createState() => _WarningState();
}

class _WarningState extends State<Warning> {
  final player = AudioPlayer();

  late InterstitialAd interstitialAd;

  bool isAdLoaded = false;

  void initState() {
    super.initState();
    initInterstitialAd();
  }

  //for initInterstitialAd
  initInterstitialAd() {
    InterstitialAd.load(
      adUnitId: 'ca-app-pub-4176044746344249/8049657040',
      request: AdRequest(),
      adLoadCallback: InterstitialAdLoadCallback(
        onAdLoaded: (ad) {
          interstitialAd = ad;
          setState(() {
            isAdLoaded = true;
          });
        },
        onAdFailedToLoad: ((err) {
          interstitialAd.dispose();
        }),
      ),
    );
  }

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
                    //Stop Button
                    InkWell(
                      onTap: () {
                        player.stop();
                      },
                      child: SvgPicture.asset(
                        'assets/images/stopIcon.svg',
                        width: 70,
                        height: 70,
                        colorFilter: ColorFilter.mode(
                          HexColor('#FF0000'),
                          BlendMode.srcIn,
                        ),
                      ),
                    ),

                    SizedBox(height: 15),

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
                            player.play(
                                AssetSource('sounds/Warning/Warning1.mp3'));

                            //for ad
                            if (isAdLoaded) {
                              interstitialAd.show();
                            }
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
                            player.play(
                                AssetSource('sounds/Warning/Warning2.mp3'));

                            //for ad
                            if (isAdLoaded) {
                              interstitialAd.show();
                            }
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
                            player.play(
                                AssetSource('sounds/Warning/Warning3.mp3'));

                            //for ad
                            if (isAdLoaded) {
                              interstitialAd.show();
                            }
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
                            player.play(
                                AssetSource('sounds/Warning/Warning4.mp3'));

                            //for ad
                            if (isAdLoaded) {
                              interstitialAd.show();
                            }
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
                            player.play(
                                AssetSource('sounds/Warning/Warning5.mp3'));

                            //for ad
                            if (isAdLoaded) {
                              interstitialAd.show();
                            }
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

                            //for ad
                            if (isAdLoaded) {
                              interstitialAd.show();
                            }
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
                            player.play(
                                AssetSource('sounds/Warning/Warning5.mp3'));

                            //for ad
                            if (isAdLoaded) {
                              interstitialAd.show();
                            }
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
                            player.play(
                                AssetSource('sounds/Warning/Warning6.mp3'));

                            //for ad
                            if (isAdLoaded) {
                              interstitialAd.show();
                            }
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
                        player.play(AssetSource('sounds/Warning/Warning9.mp3'));

                        //for ad
                        if (isAdLoaded) {
                          interstitialAd.show();
                        }
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
