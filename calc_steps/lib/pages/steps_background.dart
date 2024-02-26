import 'package:flutter/material.dart';

class StepsBackground extends StatelessWidget {
  const StepsBackground({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 500,
      child: Container(
        decoration: BoxDecoration(
          color: Color(0xFFD1A7A0),
          borderRadius: BorderRadius.circular(32),
        ),
        height: 500,
        width: 1028,
      ),
    );
  }
}
