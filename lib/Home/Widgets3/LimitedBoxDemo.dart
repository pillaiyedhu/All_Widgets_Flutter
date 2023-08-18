import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LimitedBoxDemo extends StatefulWidget {
  LimitedBoxDemoState createState() {
    return LimitedBoxDemoState();
  }
}

class LimitedBoxDemoState extends State<LimitedBoxDemo> {
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child: LimitedBox(
            maxHeight: 30,
            maxWidth: 200,
            child: Card(
              child: ListTile(
                leading: Icon(Icons.person),
                title: Text("This is icon"),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
