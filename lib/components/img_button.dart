import 'package:flutter/material.dart';

class CustomImageButton extends StatelessWidget {
  final String imgSrc;
  final double height;
  final double width;
  final Function press;
  const CustomImageButton(
      {Key? key,
      required this.imgSrc,
      required this.press,
      required this.height,
      required this.width})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FittedBox(
      fit: BoxFit.contain,
      child: InkWell(
        onTap: () {},
        child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Image.asset(
              imgSrc,
              height: height,
              width: width,
            )),
      ),
    );
  }
}
