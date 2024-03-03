import 'package:calc_steps/pages/calculator_1.dart';
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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(225, 206, 150, 166),
      body: Center(
        child: Column(
          children: <Widget>[
            // calculator dropdown
            DropdownCalculator(),

            //calculator steps container

            Stack(
              children: <Widget>[
                //background
                StepsBackground(),

                //steps
                CalculatorOne(),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
