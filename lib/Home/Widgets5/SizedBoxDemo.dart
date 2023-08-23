import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SizedBoxDemo extends StatefulWidget {
  SizedBoxDemoState createState() {
    return SizedBoxDemoState();
  }
}

class SizedBoxDemoState extends State<SizedBoxDemo> {
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SizedBox(
          height: 200,
          width: 200,
          child: Card(
            color: Colors.white,
            elevation: 4,
            shadowColor: Colors.red,
          ),
        ),
      ),
    );
  }
}
