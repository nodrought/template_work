import 'package:flutter/material.dart';
import 'package:xtendly/widgets/responsive.dart';

class SaleHeading extends StatelessWidget {
  SaleHeading({
    Key? key,
    required this.screenSize,
  }) : super(key: key);

  final Size screenSize;

  final List<String> assets = [
    'images/sweatshirt_category.png',
    'images/hoodie_category.png',
    'images/pair_category.png',
  ];

  final List<String> title = ['Sci-fi', 'Photography', 'Romance'];

  @override
  Widget build(BuildContext context) {
    return ResponsiveWidget.isSmallScreen(context)
        ? Container(
            decoration: BoxDecoration(
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  spreadRadius: 5,
                  blurRadius: 7,
                  offset: const Offset(0, 3), // changes position of shadow
                ),
              ],
            ),
            padding: EdgeInsets.only(top: screenSize.height / 50),
            child: const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'SALE',
                    style: TextStyle(
                        fontSize: 36,
                        fontFamily: 'Montserrat',
                        fontWeight: FontWeight.w500,
                        color: Color(0xFFCF4242)),
                  ),
                ]),
          )
        : Padding(
            padding: EdgeInsets.only(
              top: screenSize.height * 0.06,
            ),
            child: Container(
              height: 77,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(0),
                boxShadow: kElevationToShadow[
                    2], // Use This kElevationToShadow ***********
              ),
              padding: EdgeInsets.only(
                left: screenSize.width / 15,
                right: screenSize.width / 15,
              ),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ...Iterable<int>.generate(5).map(
                    (int pageIndex) => const Expanded(
                      child: Text(
                        'SALE',
                        style: TextStyle(
                            fontSize: 61,
                            fontFamily: 'Montserrat',
                            fontWeight: FontWeight.w500,
                            color: Color(0xFFCF4242)),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          );
  }
}
