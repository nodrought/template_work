import 'package:flutter/material.dart';

class CircleIcon extends StatelessWidget {
  const CircleIcon({super.key, required this.size, required this.icon});
  final double size;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size,
      height: size,
      decoration: const BoxDecoration(
        shape: BoxShape.circle,
        color: Color(0xFF767676),
      ),
      child: Center(
        child: Icon(
          icon,
          size: 30,
          color: Colors.white,
        ),
      ),
    );
  }
}
