import 'package:flutter/material.dart';

class ColorFilteredDemo extends StatefulWidget {
  @override
  ColorFilteredDemoState createState() {
    return ColorFilteredDemoState();
  }
}

class ColorFilteredDemoState extends State<ColorFilteredDemo> {
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
          child: ColorFiltered(
            colorFilter: ColorFilter.mode(Colors.cyan, BlendMode.color),
            child: Image.asset('picture1.jpg'),

          ),
        ));
  }
}

