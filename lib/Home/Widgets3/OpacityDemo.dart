import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class OpacityDemo extends StatefulWidget {
  OpacityDemoState createState() {
    return OpacityDemoState();
  }
}

class OpacityDemoState extends State<OpacityDemo> {
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Opacity(
              opacity: 1,
              child: Container(
                color: Colors.red,
                height: 50,
                width: double.infinity,
              ),
            ),

            Opacity(
              opacity: 0.5,
              child: Container(
                color: Colors.red,
                height: 50,
                width: double.infinity,
              ),
            ),

            Opacity(
              opacity: 0.1,
              child: Container(
                color: Colors.red,
                height: 50,
                width: double.infinity,
              ),
            ),
          ],

        ),
      ),
    );
  }
}
