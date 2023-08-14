import 'package:flutter/material.dart';

class ColoredBoxDemo extends StatefulWidget {
  @override
  ColoredBoxDemoState createState() {
    return ColoredBoxDemoState();
  }
}

class ColoredBoxDemoState extends State<ColoredBoxDemo> {
  bool onChange = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Flutter Widget Viewer"),
          centerTitle: true,
          backgroundColor: Colors.pink,
        ),
        body: Center(
          child: ColoredBox(
            color: Colors.red,
            child: SizedBox(
              height: 80,
              width: 80,
            ),
          ),
        ));
  }
}
