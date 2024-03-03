import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class StepsBackground extends StatelessWidget {
  const StepsBackground({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 500,
      child: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              color: Color(0xFFD1A7A0),
              borderRadius: BorderRadius.circular(32),
            ),
            height: 500,
            width: 1028,
          ),
          Positioned(
              top: 25,
              right: 0,
              child: Container(
                  alignment: Alignment.centerRight,
                  child: Image.asset(
                    'image/calc.png',
                    height: 450,
                    width: 400,
                  )))
        ],
      ),
    );
  }
}
