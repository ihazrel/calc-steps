// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';

class StepsButton extends StatelessWidget {
  final String text;
  VoidCallback onPressed;
  final bool onCurrent;
  final bool isRounded;
  final bool firstStep;
  final bool lastStep;

  StepsButton({
    super.key,
    required this.text,
    required this.onPressed,
    required this.onCurrent,
    required this.isRounded,
    required this.firstStep,
    required this.lastStep,
  });

  @override
  Widget build(BuildContext context) {
    Color buttonColor = onCurrent ? Color(0xFFD1A7A0) : Color(0xFFE8E8E8);
    BorderRadius round = firstStep
        ? BorderRadius.only(topLeft: Radius.circular(32))
        : lastStep
            ? BorderRadius.only(bottomLeft: Radius.circular(32))
            : BorderRadius.circular(0);

    return Expanded(
      child: MaterialButton(
        onPressed: onPressed,
        child: Text(text),
        color: buttonColor,
        shape: RoundedRectangleBorder(borderRadius: round),
        minWidth: 200,
        elevation: 0,
        // coloring
      ),
    );
  }
}
