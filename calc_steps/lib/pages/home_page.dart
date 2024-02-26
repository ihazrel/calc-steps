import 'package:calc_steps/pages/calculator_1.dart';
import 'package:calc_steps/util/steps_background.dart';
import 'package:flutter/material.dart';

String dropdownvalue = "FX570MS";
var list = ['FX570MS', 'FX570Ex'];

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
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                padding: EdgeInsets.all(5),
                decoration: BoxDecoration(
                  color: Color(0xFFE8E8E8),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: DropdownButton(
                  borderRadius: BorderRadius.circular(10),
                  itemHeight: 50,

                  //initial value
                  value: dropdownvalue,

                  //downarrow icon
                  icon: Icon(Icons.keyboard_arrow_down),

                  //array list of item
                  items: list.map(
                    (String list) {
                      return DropdownMenuItem(
                        value: list,
                        child: Text(list),
                      );
                    },
                  ).toList(),
                  onChanged: (String? newValue) {
                    setState(() {
                      dropdownvalue = newValue!;
                    });
                  },
                ),
              ),
            ),
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
