// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class ResuableContainer extends StatelessWidget {
  double marginLeft;
  double marginRight;
  String boxColor;
  String img;
  double imgHeight;
  double imgWidth;
  String title;
  Function function;

  ResuableContainer({
    Key? key,
    required this.marginLeft,
    required this.marginRight,
    required this.boxColor,
    required this.img,
    required this.imgHeight,
    required this.imgWidth,
    required this.title,
    required this.function,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return InkWell(
      onTap: () {
        function();
      },
      child: Container(
        margin: EdgeInsets.only(left: marginLeft, top: marginRight),
        height: height / 5.4,
        width: width / 2.3,
        decoration: BoxDecoration(
          color: HexColor(boxColor),
          borderRadius: const BorderRadius.all(
            Radius.circular(14),
          ),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
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
                margin: const EdgeInsets.only(top: 8),
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

            //title
            Text(
              title,
              style: const TextStyle(
                fontSize: 26,
                fontFamily: "Mitr",
                fontWeight: FontWeight.w400,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
