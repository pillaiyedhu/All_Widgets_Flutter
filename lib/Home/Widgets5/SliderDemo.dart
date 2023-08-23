import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SliderDemo extends StatefulWidget {
  SliderDemoState createState() {
    return SliderDemoState();
  }
}

class SliderDemoState extends State<SliderDemo> {
  double currentValue = 10;
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Slider(
          value: currentValue,
          max: 100,
          onChanged: (value) {
            setState(() {
              currentValue = value;
            });
          },
          label: '$currentValue',
          divisions: 10,

        ),
      ),
    );
  }
}
