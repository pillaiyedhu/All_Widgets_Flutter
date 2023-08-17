import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FittedBoxDemo extends StatefulWidget {
  FittedBoxDemoState createState() {
    return FittedBoxDemoState();
  }
}

class FittedBoxDemoState extends State<FittedBoxDemo> {
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          color: Colors.cyan,
          height: 100,
          width: 300,
          child: FittedBox(
            child: Text("This is fitted box"),
          ),
        )
      ),
    );
  }
}
