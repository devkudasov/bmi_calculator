import 'package:flutter/material.dart';

class CardContainer extends StatelessWidget {
  const CardContainer({super.key, required this.color, this.onTap, this.child});

  final Color color;
  final void Function()? onTap;
  final Widget? child;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        margin: const EdgeInsets.fromLTRB(5.0, 10.0, 5.0, 10.0),
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(10.0),
        ),
        child: child,
      ),
    );
  }
}
