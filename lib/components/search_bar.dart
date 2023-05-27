import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomSearchBar extends StatelessWidget {
  const CustomSearchBar({
    Key? key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 194,
      height: 30,
      margin: const EdgeInsets.symmetric(horizontal: 20),
      padding: const EdgeInsets.symmetric(horizontal: 15),
      decoration: BoxDecoration(
        color: const Color(0xFFE4E4E4),
        borderRadius: BorderRadius.circular(30),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: [
          const Padding(
            padding: EdgeInsets.only(left: 8.0),
            child: Icon(CupertinoIcons.search, color: Colors.black),
          ),
          Expanded(
            child: TextFormField(
              decoration: const InputDecoration(
                hintText: 'Search',
                hintStyle: TextStyle(
                    color: Colors.white,
                    fontSize: 12,
                    fontWeight: FontWeight.w400),
                border: InputBorder.none,
                contentPadding: EdgeInsets.only(left: 8.0, bottom: 20),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
