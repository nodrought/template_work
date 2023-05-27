import 'package:flutter/material.dart';

class ImageBtnWithCounter extends StatelessWidget {
  const ImageBtnWithCounter({
    Key? key,
    required this.imgSrc,
    this.numOfitem = 0,
    required this.height,
    required this.width,
    required this.press,
  }) : super(key: key);
  final double height;
  final double width;
  final String imgSrc;
  final int numOfitem;
  final GestureTapCallback press;

  @override
  Widget build(BuildContext context) {
    return FittedBox(
      fit: BoxFit.contain,
      child: InkWell(
        onTap: press,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Stack(
            clipBehavior: Clip.none,
            children: [
              Image.asset(
                imgSrc,
                height: height,
                width: width,
              ),
              Positioned(
                bottom: -3,
                right: 0,
                child: Container(
                  height: 11,
                  width: 11,
                  decoration: BoxDecoration(
                    color: const Color(0xFFD9D9D9),
                    shape: BoxShape.circle,
                    border:
                        Border.all(width: 1.5, color: const Color(0xFFD9D9D9)),
                  ),
                  child: Center(
                    child: Text(
                      "$numOfitem",
                      style: const TextStyle(
                        fontSize: 7,
                        height: 1,
                        fontWeight: FontWeight.w600,
                        color: Colors.grey,
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
