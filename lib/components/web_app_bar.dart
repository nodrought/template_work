import 'package:flutter/material.dart';

import 'package:xtendly/components/img_btn_with_counter.dart';
import 'package:xtendly/components/img_button.dart';
import 'package:xtendly/components/logo.dart';
import 'package:xtendly/components/search_bar.dart';
// import 'package:food_web/Components/default_button.dart';

import 'category_item.dart';

class WebAppBar extends StatelessWidget {
  const WebAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;

    return PreferredSize(
      preferredSize: Size(screenSize.width, 66),
      child: Container(
        width: MediaQuery.of(context).size.width,
        margin: const EdgeInsets.symmetric(vertical: 20),
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow:
              kElevationToShadow[2], // Use This kElevationToShadow ***********
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            const SizedBox(width: 5),
            const CircleLogo(
              fontsize: 12,
              size: 50,
            ),
            const Spacer(),
            SizedBox(width: screenSize.width / 15),
            CategoryItem(title: 'HOME', press: () {}),
            CategoryItem(title: 'NEW ARRIVAL', press: () {}),
            CategoryItem(title: 'SHOP', press: () {}),
            CategoryItem(title: 'LAST COLLECTION', press: () {}),
            CategoryItem(title: 'MEN', press: () {}),
            CategoryItem(title: 'WOMEN', press: () {}),
            const CustomSearchBar(),
            Flexible(
              child: ImageBtnWithCounter(
                  imgSrc: 'images/cart.png',
                  press: () {},
                  height: 28,
                  width: 28),
            ),
            CustomImageButton(
                imgSrc: 'images/star.png', press: () {}, height: 28, width: 28)
          ],
        ),
      ),
    );
  }
}
