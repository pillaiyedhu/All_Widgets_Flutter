import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PlaceHolderDemo extends StatefulWidget {
  PlaceHolderDemoState createState() {
    return PlaceHolderDemoState();
  }
}

class PlaceHolderDemoState extends State<PlaceHolderDemo> {
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Placeholder(
          fallbackHeight: 10,
          fallbackWidth: 10,

        ),
      ),
    );
  }
}
