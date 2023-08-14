import 'package:flutter/material.dart';

class CloseButtonDemo extends StatefulWidget {
  @override
  CloseButtonDemoState createState() {
    return CloseButtonDemoState();
  }
}

class CloseButtonDemoState extends State<CloseButtonDemo> {
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
            child: CloseButton(
          color: Colors.black,
          onPressed: () {},
        )));
  }
}
