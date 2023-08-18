import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PhysicalModelDemo extends StatefulWidget {
  PhysicalModelDemoState createState() {
    return PhysicalModelDemoState();
  }
}

class PhysicalModelDemoState extends State<PhysicalModelDemo> {
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          color: Colors.white,
          alignment: Alignment.center,
          child: PhysicalModel(
            color: Colors.teal,
            elevation: 20,
            shadowColor: Colors.red,
            shape: BoxShape.circle,
            child: Container(
              height: 100,
              width: 100,
              alignment: Alignment.center,
              child: Center(
                child: Icon(Icons.flutter_dash,size: 100),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
