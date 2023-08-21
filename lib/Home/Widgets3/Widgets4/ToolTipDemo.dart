import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ToolTipDemo extends StatefulWidget {
  ToolTipDemoState createState() {
    return ToolTipDemoState();
  }
}

class ToolTipDemoState extends State<ToolTipDemo> {
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Tooltip(
          message: "This is an image",
          child: Image(
            image: AssetImage('assets/picture1.jpg')
          ),
        ),
      ),
    );
  }
}
