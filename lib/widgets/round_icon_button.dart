import 'package:bmi_calculator/constants.dart';
import 'package:flutter/material.dart';

class RoundIconButton extends StatelessWidget {
  const RoundIconButton({Key? key, required this.onPressed, required this.icon}) : super(key: key);

  final void Function() onPressed;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      shape: const CircleBorder(),
      fillColor: kButtonColor,
      constraints: const BoxConstraints.tightFor(
        width: 56.0,
        height: 56.0,
      ),
      elevation: 6.0,
      onPressed: onPressed,
      child: Icon(
        icon,
        color: Colors.white,
      ),
    );
  }
}
