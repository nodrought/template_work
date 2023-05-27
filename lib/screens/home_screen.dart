// ignore_for_file: unused_field

import 'package:flutter/material.dart';
import 'package:xtendly/components/mobile_app_bar.dart';

import 'package:xtendly/components/web_app_bar.dart';
import 'package:xtendly/components/account_header.dart';
import 'package:xtendly/widgets/categories.dart';
import 'package:xtendly/widgets/categories_body.dart';
import 'package:xtendly/widgets/information_footer.dart';
import 'package:xtendly/widgets/main_heading.dart';

import 'package:xtendly/widgets/sale_body.dart';
import 'package:xtendly/widgets/sale_heading.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final ScrollController _scrollController = ScrollController();
  double _scrollPosition = 0;
  double _opacity = 0;

  _scrollListener() {
    setState(() {
      _scrollPosition = _scrollController.position.pixels;
    });
  }

  @override
  void initState() {
    _scrollController.addListener(_scrollListener);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    _opacity = _scrollPosition < screenSize.height * 0.40
        ? _scrollPosition / (screenSize.height * 0.40)
        : 1;

    return Scaffold(
      extendBodyBehindAppBar: true,
      // appBar: PreferredSize(
      //   preferredSize: Size(screenSize.width, 70),
      //   child: WebAppBar(),
      // ),
      body: SafeArea(
        child: Stack(
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height,
              // Other widgets in the Stack
              child: SingleChildScrollView(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    MainHeading(screenSize: screenSize),
                    Categories(screenSize: screenSize),
                    CategoriesBody(screenSize: screenSize),
                    SaleHeading(screenSize: screenSize),
                    Flexible(
                      fit: FlexFit.loose,
                      child: SaleBody(screenSize: screenSize),
                    ),
                    InformationFooter(screenSize: screenSize)
                  ],
                ),
              ),
            ),
            screenSize.width < 800
                ? const Positioned(child: MobileAppBar())
                : const Positioned(child: WebAppBar()),
            AccountHeader(screenSize: screenSize),
          ],
        ),
      ),
    );
  }
}
