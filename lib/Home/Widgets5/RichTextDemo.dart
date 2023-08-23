import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class RichTextDemo extends StatefulWidget {
  RichTextDemoState createState() {
    return RichTextDemoState();
  }
}

class RichTextDemoState extends State<RichTextDemo> {
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: RichText(
          text: TextSpan(
            style: TextStyle(
              color: Colors.cyan
            ),
            children: [
              TextSpan(
                text: "Hello",
              ),
              TextSpan(
                text: 'Konichiwa',
                style: TextStyle(
                  color: Colors.amber
                )
              )
            ]
          )
        ),
      ),
    );
  }
}
