import 'package:flutter/material.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:xtendly/components/circle_icon.dart';
import 'package:xtendly/components/icon_text.dart';
import 'package:xtendly/components/logo.dart';

class InformationFooter extends StatelessWidget {
  const InformationFooter({
    Key? key,
    required this.screenSize,
  }) : super(key: key);

  final Size screenSize;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(
        top: screenSize.height * 0.06,
        left: screenSize.width / 10,
        right: screenSize.width / 10,
        bottom: screenSize.height * 0.06,
      ),
      color: const Color(0xFFEBEAE8),
      child: screenSize.width < 800
          ? const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                CircleLogo(
                  size: 130,
                  fontsize: 25,
                ),
                Padding(
                  padding: EdgeInsets.all(20),
                  child: Column(
                    children: [
                      IconText(
                        icon: FontAwesome5Solid.location_arrow,
                        text:
                            'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      IconText(
                        icon: MaterialIcons.phone_iphone,
                        text: 'Lorem ipsum',
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      IconText(
                        icon: MaterialIcons.mail_outline,
                        text: 'Lorem ipsum dolor sit amet',
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(20),
                  child: Row(
                    children: [
                      SizedBox(
                        width: 20,
                      ),
                      CircleIcon(size: 50, icon: Icons.facebook),
                      SizedBox(
                        width: 20,
                      ),
                      CircleIcon(size: 50, icon: Entypo.pinterest),
                      SizedBox(
                        width: 20,
                      ),
                      CircleIcon(size: 50, icon: Feather.instagram),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 10),
                  child: Text(
                    'COLLECTION',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 10),
                  child: Text(
                    'INFORMATION',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 10),
                  child: Text(
                    'MORE',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                    ),
                  ),
                ),
              ],
            )
          : Row(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      CircleLogo(
                        size: 130,
                        fontsize: 25,
                      ),
                      Padding(
                        padding: EdgeInsets.all(20),
                        child: Column(
                          children: [
                            IconText(
                              icon: FontAwesome5Solid.location_arrow,
                              text:
                                  'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            IconText(
                              icon: MaterialIcons.phone_iphone,
                              text: 'Lorem ipsum',
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            IconText(
                              icon: MaterialIcons.mail_outline,
                              text: 'Lorem ipsum dolor sit amet',
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.all(20),
                        child: Row(
                          children: [
                            SizedBox(
                              width: 20,
                            ),
                            CircleIcon(size: 50, icon: Icons.facebook),
                            SizedBox(
                              width: 20,
                            ),
                            CircleIcon(size: 50, icon: Entypo.pinterest),
                            SizedBox(
                              width: 20,
                            ),
                            CircleIcon(size: 50, icon: Feather.instagram),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: Container(
                    height: 400, // Adjust the height as needed
                    padding: const EdgeInsets.all(50),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Expanded(
                          child: Column(
                            children: [
                              const Text(
                                'COLLECTION',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18,
                                ),
                              ),
                              const SizedBox(
                                  height:
                                      8), // Add spacing between header and entries
                              for (int i = 1; i <= 6; i++)
                                const SizedBox(
                                  height:
                                      40, // Set the desired height for the entries
                                  child: Center(
                                    child: Text(
                                      'Lorem ipsum',
                                      style: TextStyle(
                                        color: Color(0xFF676767),
                                        fontSize: 15,
                                      ),
                                    ),
                                  ),
                                ),
                            ],
                          ),
                        ),
                        Expanded(
                          child: Column(
                            children: [
                              const Text(
                                'INFORMATION',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18,
                                ),
                              ),
                              const SizedBox(
                                  height:
                                      8), // Add spacing between header and entries
                              for (int i = 1; i <= 6; i++)
                                const SizedBox(
                                  height:
                                      40, // Set the desired height for the entries
                                  child: Center(
                                    child: Text(
                                      'Lorem ipsum',
                                      style: TextStyle(
                                        color: Color(0xFF676767),
                                        fontSize: 15,
                                      ),
                                    ),
                                  ),
                                ),
                            ],
                          ),
                        ),
                        Expanded(
                          child: Column(
                            children: [
                              const Text(
                                'MORE',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18,
                                ),
                              ),
                              const SizedBox(
                                  height:
                                      8), // Add spacing between header and entries
                              for (int i = 1; i <= 6; i++)
                                const SizedBox(
                                  height:
                                      40, // Set the desired height for the entries
                                  child: Center(
                                    child: Text(
                                      'Lorem ipsum',
                                      style: TextStyle(
                                        color: Color(0xFF676767),
                                        fontSize: 15,
                                      ),
                                    ),
                                  ),
                                ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
    );
  }
}
