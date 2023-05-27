import 'package:flutter/material.dart';

class AccountHeader extends StatelessWidget {
  const AccountHeader({
    Key? key,
    required this.screenSize,
  }) : super(key: key);

  final Size screenSize;

  @override
  Widget build(BuildContext context) {
    return screenSize.width < 800
        ? const SizedBox.shrink()
        : Align(
            alignment: Alignment.topRight,
            child: Transform.translate(
              offset: const Offset(0, -5),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  TextButton(
                    onPressed: () {},
                    child: const Text(
                      'Help',
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w500,
                          fontSize: 10),
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                    child: VerticalDivider(
                      thickness: 1,
                      color: Colors.black,
                    ),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: const Text(
                      'Join Us',
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w500,
                          fontSize: 10),
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                    child: VerticalDivider(
                      thickness: 1,
                      color: Colors.black,
                    ),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: const Text(
                      'Sign In',
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w500,
                          fontSize: 10),
                    ),
                  ),
                ],
              ),
            ),
          );
  }
}
