import 'package:calc_steps/pages/steps_background.dart';
import 'package:calc_steps/util/steps_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

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
            DropdownButton(
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
            Stack(
              children: <Widget>[
                //background
                StepsBackground(),

                //steps
                Table(children: [
                  TableRow(
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          //step 1
                          StepsButton(text: "Lorum Ipsum 1", onPressed: onTest),

                          //step 2
                          StepsButton(text: "Lorum Ipsum 2", onPressed: onTest),

                          //step 3
                          StepsButton(text: "Lorum Ipsum 3", onPressed: onTest),

                          //step 4
                          StepsButton(text: "Lorum Ipsum 4", onPressed: onTest),

                          //step 5
                          StepsButton(text: "Lorum Ipsum 5", onPressed: onTest),
                        ],
                      ),
                    ],
                  ),
                ]),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
