import 'package:flutter/material.dart';

import '../util/steps_button.dart';

class CalculatorOne extends StatefulWidget {
  CalculatorOne({super.key});

  @override
  State<CalculatorOne> createState() => _CalculatorOneState();
}

class _CalculatorOneState extends State<CalculatorOne> {
  var clickedList = [true, false, false, false, false];

  void onClick(int i) {
    for (int j = 0; j < clickedList.length; j++) {
      clickedList[j] = false;
    }

    clickedList[i] = true;
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 500,
      child: Column(
        children: [
          //step 1
          StepsButton(
            text: "Lorum Ipsum 1",
            onPressed: () => setState(() {
              onClick(0);
            }),
            onCurrent: true,
            isRounded: false,
            isFirstLast: 1,
            isClicked: clickedList[0],
          ),

          //step 2
          StepsButton(
            text: "Lorum Ipsum 2",
            onPressed: () => setState(() {
              onClick(1);
            }),
            onCurrent: false,
            isRounded: false,
            isFirstLast: 0,
            isClicked: clickedList[1],
          ),

          //step 3
          StepsButton(
            text: "Lorum Ipsum 3",
            onPressed: () => setState(() {
              onClick(2);
            }),
            onCurrent: false,
            isRounded: false,
            isFirstLast: 0,
            isClicked: clickedList[2],
          ),

          //step 4
          StepsButton(
            text: "Lorum Ipsum 4",
            onPressed: () => setState(() {
              onClick(3);
            }),
            onCurrent: false,
            isRounded: false,
            isFirstLast: 0,
            isClicked: clickedList[3],
          ),

          //step 5
          StepsButton(
            text: "Lorum Ipsum 5",
            onPressed: () => setState(() {
              onClick(4);
            }),
            onCurrent: false,
            isRounded: false,
            isFirstLast: 2,
            isClicked: clickedList[4],
          ),
        ],
      ),
    );
  }
}
