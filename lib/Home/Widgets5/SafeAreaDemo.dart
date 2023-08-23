import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SafeAreaDemo extends StatefulWidget {
  SafeAreaDemoState createState() {
    return SafeAreaDemoState();
  }
}

class SafeAreaDemoState extends State<SafeAreaDemo> {
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Text("This is SafeArea")
      ),
    );
  }
}
