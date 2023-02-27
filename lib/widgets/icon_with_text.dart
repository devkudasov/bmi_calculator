import 'package:flutter/material.dart';

import '../constants.dart';

class IconWithText extends StatelessWidget {
  const IconWithText({Key? key, required this.icon, required this.text})
      : super(key: key);

  final IconData icon;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          icon,
          size: kIconSize,
        ),
        const SizedBox(
          height: kGap,
        ),
        Text(
          text,
          style: kLabelTextStyle,
        ),
      ],
    );
  }
}
