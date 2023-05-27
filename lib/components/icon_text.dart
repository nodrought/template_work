import 'package:flutter/material.dart';

class IconText extends StatelessWidget {
  const IconText({
    Key? key,
    required this.icon,
    required this.text,
  }) : super(key: key);
  final IconData icon;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Icon(icon),
        const SizedBox(
          width: 20,
        ),
        Expanded(
          child: Text(
            text,
            maxLines: 2,
            style: const TextStyle(fontSize: 15, color: Color(0xFF676767)),
          ),
        ),
      ],
    );
  }
}
