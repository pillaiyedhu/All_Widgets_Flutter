import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TextSpanDemo extends StatefulWidget {
  TextSpanDemoState createState() {
    return TextSpanDemoState();
  }
}

class TextSpanDemoState extends State<TextSpanDemo> {
  Widget build(BuildContext context) {
    return Scaffold(
      body: Text.rich(
        TextSpan(
          style: TextStyle(color: Colors.blue),
          text: "Konichiwa",
          children: [
            TextSpan(
              style: TextStyle(color: Colors.amber),
              text: "Sunimase"
            )
          ]
        ),

      )
    );
  }
}
