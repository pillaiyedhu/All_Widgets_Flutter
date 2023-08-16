import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CupertinoSwitchDemo extends StatefulWidget {
  CupertinoSwitchDemoState createState() {
    return CupertinoSwitchDemoState();
  }
}

class CupertinoSwitchDemoState
    extends State<CupertinoSwitchDemo> {
  bool currentValue = false;
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: CupertinoSwitch(
            value: currentValue,
            onChanged: (bool value) {
              setState(() {
                currentValue = value;
              });
            }),
      ),
    );
  }
}
