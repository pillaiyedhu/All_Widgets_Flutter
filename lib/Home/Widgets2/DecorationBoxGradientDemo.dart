import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DecorationBoxGradientDemo extends StatefulWidget {
  DecorationBoxGradientDemoState createState() {
    return DecorationBoxGradientDemoState();
  }
}

class DecorationBoxGradientDemoState extends State<DecorationBoxGradientDemo> {
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: <Color>[
              Colors.black,
              Colors.red
            ]
          )
        ),
      ),
    );
  }
}
