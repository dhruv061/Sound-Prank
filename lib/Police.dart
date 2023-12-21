import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:sound_prank/ResuableCircle.dart';

class Police extends StatefulWidget {
  @override
  State<Police> createState() => _PoliceState();
}

class _PoliceState extends State<Police> {
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
        backgroundColor: HexColor("#FDDED6"),
        //appbar
        appBar: AppBar(
          backgroundColor: HexColor("#FDDED6"),
          elevation: 0,
          title: const Padding(
            padding: EdgeInsets.only(left: 70),
            child: Text(
              "Police",
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
                          boxColor: "#81F6D6",
                          img: "assets/images/Police/Police1.png",
                          imgHeight: 90,
                          imgWidth: 90,
                          imgMarginLeft: 6,
                          imgMarginTop: 25,
                          title: "Siren 1",
                          titlePaddingLeft: 18,
                          titlePaddingTop: 3,
                          function: () {
                            player.play(
                                AssetSource('sounds/Police/PoliceSiren1.mp3'));

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
                          boxColor: "#81F6D6",
                          img: "assets/images/Police/Police2.png",
                          imgHeight: 90,
                          imgWidth: 90,
                          imgMarginLeft: 6,
                          imgMarginTop: 25,
                          title: "Siren 2",
                          titlePaddingLeft: 30,
                          titlePaddingTop: 3,
                          function: () {
                            player.play(
                                AssetSource('sounds/Police/PoliceSiren2.mp3'));

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
                          boxColor: "#81F6D6",
                          img: "assets/images/Police/Police3.png",
                          imgHeight: 90,
                          imgWidth: 90,
                          imgMarginLeft: 6,
                          imgMarginTop: 25,
                          title: "Siren 3",
                          titlePaddingLeft: 18,
                          titlePaddingTop: 3,
                          function: () {
                            player.play(
                                AssetSource('sounds/Police/PoliceSiren3.mp3'));

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
                          boxColor: "#81F6D6",
                          img: "assets/images/Police/Police4.png",
                          imgHeight: 90,
                          imgWidth: 90,
                          imgMarginLeft: 6,
                          imgMarginTop: 25,
                          title: "Siren 4",
                          titlePaddingLeft: 30,
                          titlePaddingTop: 3,
                          function: () {
                            player.play(
                                AssetSource('sounds/Police/PoliceSiren4.mp3'));

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
                          boxColor: "#81F6D6",
                          img: "assets/images/Police/Police5.png",
                          imgHeight: 90,
                          imgWidth: 90,
                          imgMarginLeft: 6,
                          imgMarginTop: 25,
                          title: "Siren 5",
                          titlePaddingLeft: 18,
                          titlePaddingTop: 3,
                          function: () {
                            player.play(
                                AssetSource('sounds/Police/PoliceSiren5.mp3'));

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
                          boxColor: "#81F6D6",
                          img: "assets/images/Police/Police6.png",
                          imgHeight: 90,
                          imgWidth: 90,
                          imgMarginLeft: 6,
                          imgMarginTop: 25,
                          title: "Siren 6",
                          titlePaddingLeft: 30,
                          titlePaddingTop: 3,
                          function: () {
                            player.play(
                                AssetSource('sounds/Police/PoliceSiren6.mp3'));

                            //for ad
                            if (isAdLoaded) {
                              interstitialAd.show();
                            }
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
