import 'package:flutter/material.dart';

import '../util/steps_button.dart';

class CalculatorTwo extends StatefulWidget {
  final Function(int) onUpdateImageIndex;

  CalculatorTwo({Key? key, required this.onUpdateImageIndex}) : super(key: key);

  @override
  State<CalculatorTwo> createState() => _CalculatorTwoState();
}

class _CalculatorTwoState extends State<CalculatorTwo> {
  var clickedList = [true, false, false];
  List<int> besideList = [0, 1, 0];

  void updateBesideList(int i) {
    // Update besideList based on the index i

    // Clear the besideList
    for (int j = 0; j < besideList.length; j++) {
      besideList[j] = 0;
    }

    // Update besideList based on the clicked index i
    besideList[i] = 0;

    if (i == 2) {
      besideList[i - 1] = 2;
    } else if (i > 0) {
      besideList[i - 1] = 2;
      besideList[i + 1] = 1;
    } else if (i == 0) {
      besideList[i + 1] = 1;
    }
  }

  void onClick(int i) {
    // Reset clickedList
    for (int j = 0; j < clickedList.length; j++) {
      clickedList[j] = false;
    }

    // Set the clicked button to true
    clickedList[i] = true;

    // Update the besideList after the button is clicked
    updateBesideList(i);

    // update imageIndex
    widget.onUpdateImageIndex(i);

    // Print out the contents of the besideList for debugging
    /* for (int j = 0; j < besideList.length; j++) {
      print("$i$j" + ", " + besideList[j].toString());
    }
    print("=============="); */
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
            isClicked: clickedList[0],
            isFirstLast: 1,
            isBesideClicked: besideList[0],
          ),

          //step 2
          StepsButton(
            text: "Lorum Ipsum 2",
            onPressed: () => setState(() {
              onClick(1);
            }),
            onCurrent: false,
            isClicked: clickedList[1],
            isFirstLast: 0,
            isBesideClicked: besideList[1],
          ),

          //step 3
          StepsButton(
            text: "Lorum Ipsum 3",
            onPressed: () => setState(() {
              onClick(2);
            }),
            onCurrent: false,
            isClicked: clickedList[2],
            isFirstLast: 2,
            isBesideClicked: besideList[2],
          ),
        ],
      ),
    );
  }
}
