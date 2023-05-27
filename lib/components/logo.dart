import 'package:flutter/material.dart';

class CircleLogo extends StatelessWidget {
  const CircleLogo({
    super.key,
    required this.size,
    required this.fontsize,
  });
  final double size;
  final double fontsize;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size,
      height: size,
      decoration: const BoxDecoration(
        shape: BoxShape.circle,
        color: Color(0xFFD9D9D9),
      ),
      child: Center(
        child: Text(
          'Logo',
          style: TextStyle(
            fontSize: fontsize,
            color: Colors.black,
          ),
        ),
      ),
    );
  }
}
