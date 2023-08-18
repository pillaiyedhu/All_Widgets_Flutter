import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PreferredSizeDemo extends StatefulWidget {
  PreferredSizeDemoState createState() {
    return PreferredSizeDemoState();
  }
}

class PreferredSizeDemoState extends State<PreferredSizeDemo> {
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        child: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(colors: [Colors.pinkAccent,Colors.purpleAccent])
          ),
          child: Text("This is Preferred Box"),
        ),
        preferredSize: Size.fromHeight(3000),
      ),
    );
  }
}
