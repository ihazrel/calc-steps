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
    return Container(
      constraints:
          BoxConstraints(maxWidth: 1028, maxHeight: 500, minHeight: 500),
      child: Row(
        children: [
          Expanded(
            flex: 4,
            child: Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    Color.fromARGB(225, 206, 150, 166),
                    Color(0xFFD1A7A0),
                  ],
                  begin: Alignment.centerLeft,
                  end: Alignment.center,
                ),
              ),
            ),
          ),
          Expanded(
            flex: 6,
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                    topRight: Radius.circular(32),
                    bottomRight: Radius.circular(32)),
                color: Color(0xFFD1A7A0),
              ),
              constraints: BoxConstraints(minHeight: 500),
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: loadImageAsset(),
              ),
            ),
          ),
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
