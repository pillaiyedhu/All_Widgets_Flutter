import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CupertinoSliderDemo extends StatefulWidget {
  CupertinoSliderDemoState createState() {
    return CupertinoSliderDemoState();
  }
}

class CupertinoSliderDemoState extends State<CupertinoSliderDemo> {
  double currentValue = 1;
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            SizedBox(
              height: 50,
            ),
            Text(currentValue.toString()),
            SizedBox(
              height: 50,
            ),
            CupertinoSlider(
              max: 10,
              min: 0,
              value: currentValue,
              divisions: 10,
              onChanged: (value) {
                setState(() {
                  currentValue = value;
                });
              },
            )
          ],
        ),
      ),
    );
  }
}
