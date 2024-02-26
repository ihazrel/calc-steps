import 'package:flutter/material.dart';

import '../util/steps_button.dart';

class CalculatorOne extends StatelessWidget {
  const CalculatorOne({super.key});

  void onTest() {}

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 500,
      child: Column(
        children: [
          //step 1
          StepsButton(
            text: "Lorum Ipsum 1",
            onPressed: onTest,
            onCurrent: true,
            isRounded: false,
            isFirstLast: 1,
          ),

          //step 2
          StepsButton(
            text: "Lorum Ipsum 2",
            onPressed: onTest,
            onCurrent: false,
            isRounded: false,
            isFirstLast: 0,
          ),

          //step 3
          StepsButton(
            text: "Lorum Ipsum 3",
            onPressed: onTest,
            onCurrent: false,
            isRounded: false,
            isFirstLast: 0,
          ),

          //step 4
          StepsButton(
            text: "Lorum Ipsum 4",
            onPressed: onTest,
            onCurrent: false,
            isRounded: false,
            isFirstLast: 0,
          ),

          //step 5
          StepsButton(
            text: "Lorum Ipsum 5",
            onPressed: onTest,
            onCurrent: false,
            isRounded: false,
            isFirstLast: 2,
          ),
        ],
      ),
    );
  }
}
