// ignore_for_file: must_be_immutable

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class StepsBackground extends StatelessWidget {
  int imageIndex = 0;
  int formulaIndex = 0;
  int imageCategory = 0;

  int imageDisplay = 0;

  StepsBackground({required this.imageIndex, required this.formulaIndex});

  var imageList = [
    'factorize_1',
    'factorize_2',
    'factorize_3',
    'factorize_4',
    'power_1',
    'power_2',
    'power_3',
  ];

  var calcList = [
    'ex',
    'ms',
  ];

  @override
  Widget build(BuildContext context) {
    if (formulaIndex == 0)
      imageIndex = imageIndex;
    else if (formulaIndex == 1) imageIndex = imageIndex + 4;

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
            right: 0,
            child: Container(
              decoration: BoxDecoration(
                color: Color(0xFFD1A7A0),
                borderRadius: BorderRadius.circular(32),
              ),
              height: 500,
              width: 1028 - 350,
              child: Center(
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Image.asset(
                    'image/${calcList[0]}${imageList[imageIndex]}.png',
                    width: 250,
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
