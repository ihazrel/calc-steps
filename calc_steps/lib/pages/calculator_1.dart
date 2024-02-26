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
          StepsButton(
            text: "Lorum Ipsum 1",
            onPressed: onTest,
            onCurrent: true,
            isRounded: false,
            firstStep: true,
            lastStep: false,
          ),
          StepsButton(
            text: "Lorum Ipsum 2",
            onPressed: onTest,
            onCurrent: false,
            isRounded: false,
            firstStep: false,
            lastStep: false,
          ),
          StepsButton(
            text: "Lorum Ipsum 3",
            onPressed: onTest,
            onCurrent: false,
            isRounded: false,
            firstStep: false,
            lastStep: false,
          ),
          StepsButton(
            text: "Lorum Ipsum 4",
            onPressed: onTest,
            onCurrent: false,
            isRounded: false,
            firstStep: false,
            lastStep: false,
          ),
          StepsButton(
            text: "Lorum Ipsum 5",
            onPressed: onTest,
            onCurrent: false,
            isRounded: false,
            firstStep: false,
            lastStep: true,
          ),
        ],
      ),
    );
  }
}
