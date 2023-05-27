import 'package:flutter/material.dart';
import 'package:xtendly/components/rounded_txt_btn.dart';

class MainHeading extends StatelessWidget {
  const MainHeading({
    Key? key,
    required this.screenSize,
  }) : super(key: key);

  final Size screenSize;

  @override
  Widget build(BuildContext context) {
    return screenSize.width < 800
        ? Stack(
            children: [
              SizedBox(
                height: screenSize.height * 1.1,
                width: screenSize.width,
                child: Image.asset(
                  'assets/images/header_background.png',
                  fit: BoxFit.fill,
                ),
              ),
              Positioned(
                right: 0,
                top: 120,
                child: Image.asset(
                  "assets/images/header3_image.png",
                  height: 217,
                  width: 287,
                ),
              ),
              Positioned(
                left: 20,
                bottom: -60,
                top: 0,
                child: Align(
                  alignment: Alignment.center,
                  child: Transform.translate(
                    offset: const Offset(0, 0),
                    child: Image.asset(
                      "assets/images/header2_image.png",
                      height: 314,
                      width: 217,
                    ),
                  ),
                ),
              ),
              Positioned(
                right: 20,
                bottom: 40,
                child: Image.asset(
                  "assets/images/header1_image.png",
                  height: 283,
                  width: 207,
                ),
              ),
              Positioned(
                bottom: 0,
                left: 0,
                right: 0,
                top: 0,
                child: Align(
                  alignment: Alignment.center,
                  child: Transform.translate(
                    offset: const Offset(0, 0),
                    child: RoundedTextBtn(
                      text: 'Shop Now',
                      press: () {},
                      height: 47,
                      width: 180,
                      textSize: 20,
                    ),
                  ),
                ),
              ),
            ],
          )
        : Stack(
            children: [
              SizedBox(
                height: screenSize.height * 1.2,
                width: screenSize.width,
                child: Image.asset(
                  'images/header_background.png',
                  fit: BoxFit.fill,
                ),
              ),
              Positioned(
                left: 0,
                top: 0,
                bottom: 0,
                child: Image.asset(
                  "images/header1_image.png",
                  height: 514,
                  width: 381,
                ),
              ),
              Positioned(
                right: 0,
                top: 0,
                bottom: 30,
                child: Image.asset(
                  "images/header3_image.png",
                  height: 532,
                  width: 724,
                ),
              ),
              Positioned(
                left: 0,
                right: 0,
                bottom: 0,
                top: 0,
                child: Align(
                  alignment: Alignment.center,
                  child: Transform.translate(
                    offset: const Offset(-180, 50),
                    child: Image.asset(
                      "images/header2_image.png",
                      height: 564,
                      width: 387,
                    ),
                  ),
                ),
              ),
              Positioned(
                bottom: 110,
                left: 0,
                right: 0,
                child: Align(
                  alignment: Alignment.bottomCenter,
                  child: Transform.translate(
                    offset: const Offset(0, 0),
                    child: RoundedTextBtn(
                      text: 'Shop Now',
                      press: () {},
                      height: 57,
                      width: 218,
                      textSize: 24,
                    ),
                  ),
                ),
              ),
            ],
          );
  }
}
