import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FractionallySizedBoxDemo extends StatefulWidget {
  FractionallySizedBoxDemoState createState() {
    return FractionallySizedBoxDemoState();
  }
}

class FractionallySizedBoxDemoState extends State<FractionallySizedBoxDemo> {
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          child: FractionallySizedBox(
            heightFactor: 0.5,
            widthFactor: 0.5,
            child: Container(
              color: Colors.black,
            ),
          ),
        ),
      ),

    );
  }
}
