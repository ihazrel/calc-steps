// ignore_for_file: must_be_immutable

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class StepsBackground extends StatelessWidget {
  int imageIndex = 0;
  int formulaIndex = 0;
  int calculatorIndex = 0;

  StepsBackground({
    required this.imageIndex,
    required this.formulaIndex,
    required this.calculatorIndex,
  });

  var calcList = [
    'ex',
    'ms',
  ];

  var formulaList = [
    'factorize',
    'power',
  ];

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
                    'image/${calcList[calculatorIndex]}/${formulaList[formulaIndex]}/${imageIndex + 1}.webp',
                    //${calcList[calculatorIndex]}/${formulaList[formulaIndex]}/${imageIndex + 1}
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
