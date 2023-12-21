import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:sound_prank/ResuableCircle.dart';

class Breaking extends StatefulWidget {
  @override
  State<Breaking> createState() => _BreakingState();
}

class _BreakingState extends State<Breaking> {
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
        backgroundColor: HexColor("#FFE7B7"),
        //appbar
        appBar: AppBar(
          backgroundColor: HexColor("#FFE7B7"),
          elevation: 0,
          title: const Padding(
            padding: EdgeInsets.only(left: 55),
            child: Text(
              "Breaking",
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
              // color: Colors.purple,s
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
                          boxColor: "#53D46B",
                          img: "assets/images/Breaking/BreakingMain.png",
                          imgHeight: 105,
                          imgWidth: 105,
                          imgMarginLeft: 6,
                          imgMarginTop: 25,
                          title: "Sound 1",
                          titlePaddingLeft: 18,
                          titlePaddingTop: 3,
                          function: () {
                            player.play(AssetSource(
                                'sounds/Breking/breakingGlass1.mp3'));

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
                          boxColor: "#53D46B",
                          img: "assets/images/Breaking/BreakingMain.png",
                          imgHeight: 105,
                          imgWidth: 105,
                          imgMarginLeft: 6,
                          imgMarginTop: 25,
                          title: "Sound 2",
                          titlePaddingLeft: 30,
                          titlePaddingTop: 3,
                          function: () {
                            player.play(AssetSource(
                                'sounds/Breking/dishesFallAndCrash2.mp3'));

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
                          boxColor: "#53D46B",
                          img: "assets/images/Breaking/BreakingMain.png",
                          imgHeight: 105,
                          imgWidth: 105,
                          imgMarginLeft: 6,
                          imgMarginTop: 25,
                          title: "Sound 3",
                          titlePaddingLeft: 18,
                          titlePaddingTop: 3,
                          function: () {
                            player.play(AssetSource(
                                'sounds/Breking/glassBreaking3.mp3'));

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
                          boxColor: "#53D46B",
                          img: "assets/images/Breaking/BreakingMain.png",
                          imgHeight: 105,
                          imgWidth: 105,
                          imgMarginLeft: 6,
                          imgMarginTop: 25,
                          title: "Sound 4",
                          titlePaddingLeft: 30,
                          titlePaddingTop: 3,
                          function: () {
                            player.play(
                                AssetSource('sounds/Breking/glassSmash4.mp3'));

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
                          boxColor: "#53D46B",
                          img: "assets/images/Breaking/BreakingMain.png",
                          imgHeight: 105,
                          imgWidth: 105,
                          imgMarginLeft: 6,
                          imgMarginTop: 25,
                          title: "Sound 5",
                          titlePaddingLeft: 18,
                          titlePaddingTop: 3,
                          function: () {
                            player.play(
                                AssetSource('sounds/Breking/manScream5.mp3'));

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
                          boxColor: "#53D46B",
                          img: "assets/images/Breaking/BreakingMain.png",
                          imgHeight: 105,
                          imgWidth: 105,
                          imgMarginLeft: 6,
                          imgMarginTop: 25,
                          title: "Sound 6",
                          titlePaddingLeft: 30,
                          titlePaddingTop: 3,
                          function: () {
                            player.play(AssetSource(
                                'sounds/Breking/objectsCrashingmp6.mp3'));

                            //for ad
                            if (isAdLoaded) {
                              interstitialAd.show();
                            }
                          },
                        ),
                      ],
                    ),

                    //Sound-7
                    ResuableCircle(
                      marginLeft: width / 20,
                      margintop: 10,
                      boxColor: "#53D46B",
                      img: "assets/images/Breaking/BreakingMain.png",
                      imgHeight: 105,
                      imgWidth: 105,
                      imgMarginLeft: 6,
                      imgMarginTop: 25,
                      title: "Sound 7",
                      titlePaddingLeft: 30,
                      titlePaddingTop: 3,
                      function: () {
                        player.play(
                            AssetSource('sounds/Breking/stonesFalling7.mp3'));

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
