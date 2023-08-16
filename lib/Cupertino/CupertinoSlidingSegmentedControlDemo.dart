import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CupertinoSlidingSegmentedControlDemo extends StatefulWidget {
  CupertinoSlidingSegmentedControlDemoState createState() {
    return CupertinoSlidingSegmentedControlDemoState();
  }
}

class CupertinoSlidingSegmentedControlDemoState
    extends State<CupertinoSlidingSegmentedControlDemo> {
  int currentValue = 0;
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: CupertinoSlidingSegmentedControl(
          children: const {
            0: Text('Value 0'),
            1: Text("Value 1"),
            2: Text("Value 2"),
          },
          groupValue: currentValue,
          onValueChanged: (int? value) {
            setState(() {
              currentValue = value!;
            });
          },
        ),
      ),
    );
  }
}
