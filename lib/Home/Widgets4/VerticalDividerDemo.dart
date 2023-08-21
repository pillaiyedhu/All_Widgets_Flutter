import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class VerticalDivderDemo extends StatefulWidget {
  VerticalDivderDemoState createState() {
    return VerticalDivderDemoState();
  }
}

class VerticalDivderDemoState extends State<VerticalDivderDemo> {
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          Expanded(
            child: Container(
              color: Colors.red,
            )
          ),
          VerticalDivider(
            color: Colors.grey,
            indent: 20,
            endIndent: 20,
            thickness: 5,
          ),
          Expanded(
            child: Container(
              color: Colors.orange,
            )
          ),
        ],
      ),
    );
  }
}
