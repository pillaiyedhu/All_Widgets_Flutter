import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SpacerDemo extends StatefulWidget {
  SpacerDemoState createState() {
    return SpacerDemoState();
  }
}

class SpacerDemoState extends State<SpacerDemo> {
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: 100,
            color: Colors.orange,
          ),
          Spacer(
            flex: 1,
          ),
          Container(
            height: 100,
            color: Colors.orange,
          ),
          Spacer(
            flex: 2,
          ),

          Container(
            height: 100,
            color: Colors.orange,
          ),

        ],
      ),
    );
  }
}
