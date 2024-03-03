import 'package:calc_steps/pages/calculator_1.dart';
import 'package:calc_steps/pages/calculator_2.dart';
import 'package:calc_steps/util/dropdown_menu.dart';
import 'package:calc_steps/util/steps_background.dart';
import 'package:flutter/material.dart';

void onTest() {}

List _pages = [
  // calc1
  CalculatorOne(),

  //calc2
  CalculatorTwo(),
];

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int formulaIndex = 0; // Define formulaIndex here

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(225, 206, 150, 166),
      body: Center(
        child: Column(
          children: <Widget>[
            // calculator dropdown
            DropdownCalculator(
              onIndexChanged: (int index) {
                setState(() {
                  formulaIndex = index;
                });
              },
            ),

            //calculator steps container
            Stack(
              children: <Widget>[
                //background
                StepsBackground(),

                //steps - conditional rendering based on formulaIndex
                _pages[formulaIndex],
              ],
            ),
          ],
        ),
      ),
    );
  }
}
