import 'package:flutter/material.dart';

class CategoryItem extends StatelessWidget {
  final String title;
  final Function press;
  const CategoryItem({
    Key? key,
    required this.title,
    required this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: Text(
          title.toUpperCase(),
          style: const TextStyle(
              color: Colors.black, fontWeight: FontWeight.bold, fontSize: 19),
        ),
      ),
    );
  }
}
