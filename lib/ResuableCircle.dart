// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class ResuableCircle extends StatelessWidget {
  double marginLeft;
  double margintop;
  String boxColor;
  String img;
  double imgHeight;
  double imgWidth;
  double imgMarginLeft;
  double imgMarginTop;
  String title;
  Function function;
  double titlePaddingLeft;
  double titlePaddingTop;

  ResuableCircle({
    Key? key,
    required this.marginLeft,
    required this.margintop,
    required this.boxColor,
    required this.img,
    required this.imgHeight,
    required this.imgWidth,
    required this.imgMarginLeft,
    required this.imgMarginTop,
    required this.title,
    required this.function,
    required this.titlePaddingLeft,
    required this.titlePaddingTop,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Column(
      children: [
        //Circle Shape
        InkWell(
          onTap: () {
            function();
          },
          child: Container(
            margin: EdgeInsets.only(left: marginLeft, top: margintop),
            height: height / 5.5,
            width: width / 2.5,
            decoration: BoxDecoration(
              color: HexColor(boxColor),
              shape: BoxShape.circle,
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.7),
                  spreadRadius: 1,
                  blurRadius: 4,
                  offset: const Offset(1.4, 1.2),
                ),
              ],
            ),
            child: Column(
              children: [
                //Image
                Center(
                  child: Container(
                    margin:
                        EdgeInsets.only(top: imgMarginTop, left: imgMarginLeft),
                    height: imgHeight,
                    width: imgWidth,
                    decoration: BoxDecoration(
                      // color: Colors.white,

                      image: DecorationImage(
                        image: AssetImage(img),
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                ),

                SizedBox(height: 3),
              ],
            ),
          ),
        ),

        //Title
        Padding(
          padding:
              EdgeInsets.only(left: titlePaddingLeft, top: titlePaddingTop),
          child: Text(
            title,
            style: const TextStyle(
              fontSize: 26,
              fontFamily: "Mitr",
              color: Colors.black,
              fontWeight: FontWeight.w400,
            ),
          ),
        ),
      ],
    );
  }
}
