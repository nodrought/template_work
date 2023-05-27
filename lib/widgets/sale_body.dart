import 'package:flutter/material.dart';
import 'package:xtendly/components/rounded_txt_btn.dart';

class SaleBody extends StatefulWidget {
  @override
  const SaleBody({
    Key? key,
    required this.screenSize,
  }) : super(key: key);

  final Size screenSize;
  @override
  State<SaleBody> createState() => _SaleBodyState();
}

class _SaleBodyState extends State<SaleBody> {
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 0, vertical: 80),
        child: Column(children: [
          LayoutBuilder(
            builder: (context, constraints) {
              final isSmallSize = widget.screenSize.width < 800;
              final crossAxisCount = isSmallSize ? 2 : 4;
              final imageHeight = isSmallSize ? 200.0 : 400.0;
              final imageWidth = isSmallSize ? 141.0 : 273.0;

              return GridView.builder(
                itemCount: 8,
                physics: const NeverScrollableScrollPhysics(),
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: crossAxisCount,
                  childAspectRatio: 0.7,
                ),
                shrinkWrap: true,
                itemBuilder: (context, index) {
                  return Column(children: [
                    Stack(
                      children: [
                        Image.asset(
                          'assets/images/sweatshirt_category.png',
                          height: imageHeight,
                          width: imageWidth,
                          fit: BoxFit.cover,
                        ),
                        Positioned(
                          top: 0,
                          right: 10,
                          child: Align(
                            alignment: Alignment.center,
                            child: Transform.translate(
                              offset: const Offset(60, 20),
                              child: Container(
                                height: 40,
                                width: 91,
                                decoration: BoxDecoration(
                                  color: const Color(0xFFE0CA9E),
                                  borderRadius: BorderRadius.circular(4),
                                ),
                                child: const Center(
                                  child: Text(
                                    '15% OFF',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(
                        horizontal: widget.screenSize.width < 800 ? 0 : 40,
                      ),
                      child: ListTile(
                        title: const Text('LOREM IPSUM'),
                        subtitle: const Text('Lorem ipsum'),
                        titleTextStyle: TextStyle(
                            fontSize: widget.screenSize.width < 800 ? 15 : 18,
                            fontWeight: FontWeight.bold),
                        subtitleTextStyle: TextStyle(
                            fontSize: widget.screenSize.width < 800 ? 15 : 18,
                            fontWeight: FontWeight.normal),
                      ),
                    )
                  ]);
                },
              );
            },
          ),
          RoundedTextBtn(
              text: 'Shop Now',
              press: () {},
              height: widget.screenSize.width < 800 ? 32 : 57,
              width: widget.screenSize.width < 800 ? 124 : 218,
              textSize: widget.screenSize.width < 800 ? 24 : 18),
        ]));
  }
}
