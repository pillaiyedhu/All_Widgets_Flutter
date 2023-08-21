import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TransformDemo extends StatefulWidget {
  TransformDemoState createState() {
    return TransformDemoState();
  }
}

class TransformDemoState extends State<TransformDemo> {
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          height: 400,
          width: 400,
          child: Transform(
            transform: Matrix4.rotationZ(pi*1/4),
            child: Image.asset('assets/picture2.jpg'),
            alignment: Alignment.center,

          ),
        ),
      )
    );
  }
}
