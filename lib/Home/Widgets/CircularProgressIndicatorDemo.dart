import 'package:flutter/material.dart';

class CircularProgressIndicatorDemo extends StatefulWidget {
  @override
  CircularProgressIndicatorDemoState createState() {
    return CircularProgressIndicatorDemoState();
  }
}

class CircularProgressIndicatorDemoState
    extends State<CircularProgressIndicatorDemo> {
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
            child: CircularProgressIndicator(
          backgroundColor: Colors.blueGrey,
          color: Colors.cyan,
        )));
  }
}
