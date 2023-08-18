import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class GestureDetectorDemo extends StatefulWidget {
  GestureDetectorDemoState createState() {
    return GestureDetectorDemoState();
  }
}

class GestureDetectorDemoState extends State<GestureDetectorDemo> {
  int counter = 0;
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
            child: GestureDetector(
                onTap: () {
                  setState(() {
                    counter++;
                  });
                },
                child: Container(
                    height: 200,
                    width: 200,
                    color: Colors.red,
                    alignment: Alignment.center,
                    child: Text("$counter")))));
  }
}
