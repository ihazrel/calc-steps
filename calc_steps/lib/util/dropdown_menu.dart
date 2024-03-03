import 'package:flutter/material.dart';

class DropdownCalculator extends StatefulWidget {
  DropdownCalculator({super.key});

  @override
  State<DropdownCalculator> createState() => _DropdownCalculatorState();
}

class _DropdownCalculatorState extends State<DropdownCalculator> {
  String calculatorDropdownValue = "FX570MS";
  var calculatorList = ['FX570MS', 'FX570Ex'];

  String formulaDropdownValue = "Power Of";
  var formulaList = ['Power Of'];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: SizedBox(
        width: 750,
        child: Row(
          children: [
            // calculator dropdown value
            Container(
              padding: EdgeInsets.all(4.0),
              decoration: BoxDecoration(
                  color: Color(0xFFE8E8E8),
                  borderRadius: BorderRadius.circular(20)),
              child: DropdownButton(
                borderRadius: BorderRadius.circular(10),
                itemHeight: 50,

                //initial value
                value: calculatorDropdownValue,

                //downarrow icon
                icon: Icon(Icons.keyboard_arrow_down),

                //array list of item
                items: calculatorList.map(
                  (String list) {
                    return DropdownMenuItem(
                      value: list,
                      child: Text(list),
                    );
                  },
                ).toList(),
                onChanged: (String? newValue) {
                  setState(() {
                    calculatorDropdownValue = newValue!;
                  });
                },
              ),
            ),
            Spacer(),

            //formula dropdown menu
            Container(
              padding: EdgeInsets.all(4.0),
              decoration: BoxDecoration(
                  color: Color(0xFFE8E8E8),
                  borderRadius: BorderRadius.circular(20)),
              child: DropdownButton(
                borderRadius: BorderRadius.circular(10),
                itemHeight: 50,

                //initial value
                value: formulaDropdownValue,

                //downarrow icon
                icon: Icon(Icons.keyboard_arrow_down),

                //array list of item
                items: formulaList.map(
                  (String list) {
                    return DropdownMenuItem(
                      value: list,
                      child: Text(list),
                    );
                  },
                ).toList(),
                onChanged: (String? newValue) {
                  setState(() {
                    formulaDropdownValue = newValue!;
                  });
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
