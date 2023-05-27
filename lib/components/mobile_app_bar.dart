import 'package:flutter/material.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:xtendly/components/img_btn_with_counter.dart';
import 'package:xtendly/components/img_button.dart';
import 'package:xtendly/components/logo.dart';
// import 'package:food_web/Components/default_button.dart';

class MobileAppBar extends StatelessWidget {
  const MobileAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;

    return PreferredSize(
      preferredSize: Size(screenSize.width, 66),
      child: Container(
        margin: const EdgeInsets.symmetric(vertical: 20),
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow:
              kElevationToShadow[2], // Use This kElevationToShadow ***********
        ),
        child: Row(
          children: <Widget>[
            // Image.asset(
            //   "assets/images/logo.png",
            //   height: 25,
            //   alignment: Alignment.topCenter,
            // ),
            const SizedBox(width: 5),
            // Text(
            //   "Foodi".toUpperCase(),
            //   style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            // ),

            // DefaultButton(
            //   text: "Get Started",
            //   press: () {},
            // ),
            SizedBox(width: screenSize.width / 15),
            // InkWell(
            //   onHover: (value) {},
            //   onTap: () {},
            //   child: Column(
            //     mainAxisSize: MainAxisSize.min,
            //     children: [
            //       const Text(
            //         'HOME',
            //         style: TextStyle(
            //             color: Colors.black,
            //             fontWeight: FontWeight.bold,
            //             fontSize: 19),
            //       ),
            //       const SizedBox(height: 5),
            //       Visibility(
            //         maintainAnimation: true,
            //         maintainState: true,
            //         maintainSize: true,
            //         visible: _isHovering[0],
            //         child: Container(
            //           height: 2,
            //           width: 20,
            //           color: const Color(0xFF051441),
            //         ),
            //       )
            //     ],
            //   ),
            // ),
            IconButton(onPressed: () {}, icon: const Icon(Feather.menu)),
            const Spacer(),
            const CircleLogo(
              fontsize: 12,
              size: 50,
            ),
            const Spacer(),

            ImageBtnWithCounter(
                imgSrc: 'assets/images/Cart.png',
                press: () {},
                height: 28,
                width: 28),
            CustomImageButton(
                imgSrc: 'assets/images/Star.png',
                press: () {},
                height: 28,
                width: 28)
          ],
        ),
      ),
    );
  }
}
