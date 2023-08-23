import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class RangeSliderDemo extends StatefulWidget {
  RangeSliderDemoState createState() {
    return RangeSliderDemoState();
  }
}

class RangeSliderDemoState extends State<RangeSliderDemo> {
  RangeValues values = RangeValues(0.1, 0.9);
  Widget build(BuildContext context) {
    RangeLabels labels =
        RangeLabels(values.start.toString(), values.end.toString());
    return Scaffold(
      body: Center(
        child: RangeSlider(
          values: values,
          labels: labels,
          divisions: 10,
          onChanged: (value) {
            setState(() {
              values = value;
            });
          },
        ),
      ),
    );
  }
}
