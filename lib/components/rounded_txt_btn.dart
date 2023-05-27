import 'package:flutter/material.dart';

class RoundedTextBtn extends StatelessWidget {
  const RoundedTextBtn({
    Key? key,
    required this.text,
    required this.press,
    required this.height,
    required this.width,
    required this.textSize,
    this.showShadow = false,
  }) : super(key: key);

  final String text;
  final GestureTapCancelCallback press;
  final double height, width, textSize;
  final bool showShadow;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(50)),
        boxShadow: [
          BoxShadow(
              color: Color.fromRGBO(0, 0, 0, 0.25),
              offset: Offset(0, 4),
              blurRadius: 4)
        ],
      ),
      child: TextButton(
        style: TextButton.styleFrom(
          padding: EdgeInsets.zero,
          backgroundColor: Colors.white,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
        ),
        onPressed: press,
        child: Text(
          text,
          style: TextStyle(
              color: Colors.black,
              fontSize: textSize,
              fontWeight: FontWeight.w500),
        ),
      ),

      // child: ElevatedButton(
      //   style: ElevatedButton.styleFrom(
      //       backgroundColor: Colors.white,
      //       elevation: 20,

      //       shadowColor: Colors.black),
      //   onPressed: () {},
      //   child: const Text('Elevated Button Shadow',
      //       style: TextStyle(color: Colors.black, fontSize: 24)),
      // ),
    );
  }
}
