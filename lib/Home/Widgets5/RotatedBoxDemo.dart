import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class RotatedBoxDemo extends StatefulWidget {
  RotatedBoxDemoState createState() {
    return RotatedBoxDemoState();
  }
}

class RotatedBoxDemoState extends State<RotatedBoxDemo> {
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: RotatedBox(
          quarterTurns: 1,
          child: FlutterLogo(
            size: 200,
          ),
        ),
      ),
    );
  }
}
