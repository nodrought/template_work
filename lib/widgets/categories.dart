import 'package:flutter/material.dart';
import 'package:xtendly/components/rounded_txt_btn.dart';
import 'package:xtendly/widgets/responsive.dart';

class Categories extends StatelessWidget {
  Categories({
    Key? key,
    required this.screenSize,
  }) : super(key: key);

  final Size screenSize;

  final List<String> assets = [
    'assets/images/sweatshirt_category.png',
    'assets/images/header2_image.png',
    'assets/images/sweatshirt_category.png',
  ];

  final List<String> title = ['Sweatshirt', 'Hoodie', 'Pair'];

  @override
  Widget build(BuildContext context) {
    return ResponsiveWidget.isSmallScreen(context)
        ? Padding(
            padding: EdgeInsets.only(top: screenSize.height / 50),
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(width: screenSize.width / 15),
                  ...Iterable<int>.generate(assets.length).map(
                    (int pageIndex) => Padding(
                      padding: const EdgeInsets.symmetric(vertical: 10),
                      child: Stack(
                        children: [
                          SizedBox(
                            height: screenSize.width / 1,
                            width: screenSize.width / 1.5,
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(5.0),
                              child: Image.asset(
                                assets[pageIndex],
                                fit: BoxFit.fill,
                              ),
                            ),
                          ),
                          Positioned(
                            bottom: 30,
                            left: 0,
                            right: 0,
                            child: Align(
                              alignment: Alignment.bottomCenter,
                              child: RoundedTextBtn(
                                text: title[pageIndex],
                                press: () {},
                                height: 26,
                                width: 140,
                                textSize: 15,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          )
        : Padding(
            padding: EdgeInsets.only(
              top: screenSize.height * 0.06,
              left: screenSize.width / 15,
              right: screenSize.width / 15,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              mainAxisSize: MainAxisSize.min,
              children: [
                ...Iterable<int>.generate(assets.length).map(
                  (int pageIndex) => Expanded(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: Stack(
                        children: [
                          SizedBox(
                            height: screenSize.width / 2.8,
                            width: screenSize.width / 3.7,
                            child: Container(
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20.0),
                                  image: DecorationImage(
                                    fit: BoxFit.fill,
                                    image: AssetImage(
                                      assets[pageIndex],
                                      // fit: BoxFit.cover,
                                    ),
                                  ),
                                  boxShadow: [
                                    BoxShadow(
                                      offset: const Offset(0, 10),
                                      blurRadius: 20,
                                      spreadRadius: 5,
                                      color: Colors.grey.withOpacity(0.3),
                                    )
                                  ]),
                            ),
                          ),
                          Positioned(
                            bottom: 30,
                            left: 0,
                            right: 0,
                            child: Align(
                              alignment: Alignment.bottomCenter,
                              child: RoundedTextBtn(
                                text: title[pageIndex],
                                press: () {},
                                height: 52,
                                width: 199,
                                textSize: 24,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                )
              ],
            ),
          );
  }
}
