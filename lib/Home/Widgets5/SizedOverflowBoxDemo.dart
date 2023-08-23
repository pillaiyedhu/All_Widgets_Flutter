import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SizedOverflowBoxDemo extends StatefulWidget {
  SizedOverflowBoxDemoState createState() {
    return SizedOverflowBoxDemoState();
  }
}

class SizedOverflowBoxDemoState extends State<SizedOverflowBoxDemo> {
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
        // alignment: Alignment.center,
        color: Colors.red,
        child: SizedOverflowBox(
        size: Size(100, 100),
        child: ElevatedButton(onPressed: () {}, child: Text("This is overflow")),
      ))),
    );
  }
}
