import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class OverflowBoxDemo extends StatefulWidget {
  OverflowBoxDemoState createState() {
    return OverflowBoxDemoState();
  }
}

class OverflowBoxDemoState extends State<OverflowBoxDemo> {
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          alignment: Alignment.center,
          height: 100,
          width: 100,
          color: Colors.red,
          child: OverflowBox(
            maxHeight: 200,
            maxWidth: 200,
            child: Container(
              color: Colors.redAccent.withOpacity(0.5),
            ),
          ),
        ),
      ),
    );
  }
}
