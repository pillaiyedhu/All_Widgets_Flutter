import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class InkWellDemo extends StatefulWidget {
  InkWellDemoState createState() {
    return InkWellDemoState();
  }
}

class InkWellDemoState extends State<InkWellDemo> {
  Color color = Colors.red;
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: InkWell(
          
          onTap: () {
            setState(() {
              color = Colors.black;
            });
          },
          child: Ink(
            color: color,
            child: Container(
              height: 200,
              width: 200,
            ),
          ),
        ),
      ),
    );
  }
}
