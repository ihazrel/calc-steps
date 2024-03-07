// ignore_for_file: prefer_final_fields

import 'package:calc_steps/pages/calculator_11.dart';
import 'package:calc_steps/pages/calculator_12.dart';
import 'package:calc_steps/pages/calculator_21.dart';
import 'package:calc_steps/pages/calculator_22.dart';
import 'package:calc_steps/util/dropdown_menu.dart';
import 'package:calc_steps/util/steps_background.dart';
import 'package:flutter/material.dart';

void onTest() {}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _formulaIndex = 0;
  int _calculatorIndex = 0;
  int _imageIndex = 0;
  int _pageIndex = 0;

  void handleButtonPressed(int index) {
    setState(() {
      _imageIndex = index;
    });
  }

  late List<Widget> _pages = [
    // Ex Factorize
    CalculatorOneOne(
      onUpdateImageIndex: handleButtonPressed,
    ),

    // Ex Power
    CalculatorOneTwo(
      onUpdateImageIndex: handleButtonPressed,
    ),

    // MS Factorize
    CalculatorTwoOne(
      onUpdateImageIndex: handleButtonPressed,
    ),

    // MS Power
    CalculatorTwoTwo(
      onUpdateImageIndex: handleButtonPressed,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(225, 206, 150, 166),
      body: Center(
        child: Column(
          children: <Widget>[
            // calculator dropdown
            DropdownCalculator(
              onFormulaIndexChanged: (int index) {
                setState(() {
                  _imageIndex = 0;
                  _formulaIndex = index;
                  _calculatorIndex = _calculatorIndex;

                  if (_formulaIndex == 0 && _calculatorIndex == 0) {
                    _pageIndex = 0;
                  } else if (_formulaIndex == 1 && _calculatorIndex == 0) {
                    _pageIndex = 1;
                  } else if (_formulaIndex == 0 && _calculatorIndex == 1) {
                    _pageIndex = 2;
                  } else if (_formulaIndex == 1 && _calculatorIndex == 1) {
                    _pageIndex = 3;
                  }
                });
              },
              onCalculatorIndexChanged: (int index) {
                setState(() {
                  _imageIndex = 0;
                  _calculatorIndex = index;

                  if (_formulaIndex == 0 && _calculatorIndex == 0) {
                    _pageIndex = 0;
                  } else if (_formulaIndex == 1 && _calculatorIndex == 0) {
                    _pageIndex = 1;
                  } else if (_formulaIndex == 0 && _calculatorIndex == 1) {
                    _pageIndex = 2;
                  } else if (_formulaIndex == 1 && _calculatorIndex == 1) {
                    _pageIndex = 3;
                  }
                });
              },
            ),

            //calculator steps container
            Stack(
              children: <Widget>[
                //background
                StepsBackground(
                  imageIndex: _imageIndex,
                  formulaIndex: _formulaIndex,
                  calculatorIndex: _calculatorIndex,
                ),

                //steps - conditional rendering based on _formulaIndex
                _pages[_pageIndex],
              ],
            ),
          ],
        ),
      ),
    );
  }
}
