// ignore_for_file: must_be_immutable

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class StepsBackground extends StatelessWidget {
  final int imageIndex;
  final int formulaIndex;
  final int calculatorIndex;

  final List<String> calcList = ['ex', 'ms'];
  final List<String> formulaList = ['factorize', 'power'];

  StepsBackground({
    required this.imageIndex,
    required this.formulaIndex,
    required this.calculatorIndex,
  });

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
                  child: loadImageAsset(),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }

  Widget loadImageAsset() {
    String imagePath = 'image/';
    imagePath += '${calcList.elementAt(calculatorIndex)}/';
    imagePath += '${formulaList.elementAt(formulaIndex)}/';
    imagePath += '${imageIndex + 1}.webp';

    return Image.asset(
      imagePath,
      width: 250, 
    );
  }
}
