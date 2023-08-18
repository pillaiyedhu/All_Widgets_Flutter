import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class OverflowBarDemo extends StatefulWidget {
  OverflowBarDemoState createState() {
    return OverflowBarDemoState();
  }
}

class OverflowBarDemoState extends State<OverflowBarDemo> {
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: OverflowBar(
          spacing: 10,
          children: [
            ElevatedButton(onPressed: () {}, child: Text("B1")),
            ElevatedButton(onPressed: () {}, child: Text("B2")),
            ElevatedButton(onPressed: () {}, child: Text("B3")),
            ElevatedButton(onPressed: () {}, child: Text("B4")),
          ],
        ),
      ),
    );
  }
}
