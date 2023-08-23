import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class SystemMouseCursorDemo extends StatefulWidget {
  SystemMouseCursorDemoState createState() {
    return SystemMouseCursorDemoState();
  }
}

class SystemMouseCursorDemoState extends State<SystemMouseCursorDemo> {
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: MouseRegion(
          cursor: SystemMouseCursors.grab,
          child: Container(
            height: 100,
            width: 100,
            decoration: BoxDecoration(
              color: Colors.blue,
              borderRadius: BorderRadius.circular(2),
            ),
          ),
        ),
      ),
    );
  }
}
