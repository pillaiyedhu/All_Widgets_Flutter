import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PositionedDemo extends StatefulWidget {
  PositionedDemoState createState() {
    return PositionedDemoState();
  }
}

class PositionedDemoState extends State<PositionedDemo> {
  Widget build(BuildContext context) {
    return Scaffold(
      body:Stack(
          children: [
            Positioned(
              left: 20,
              top: 20,
              child: Image(
                image: AssetImage("assets/picture1.jpg"),
                height: 100,
              )
            ),
            Positioned(
              left: 60,
              top: 60,
              child: Image(
                image: AssetImage("assets/picture2.jpg"),
                height: 100,
              )            ),
            Positioned(
              left: 100,
              top: 100,
              child: Image(
                image: AssetImage("assets/picture1.jpg"),
                height: 100,
              )
            ),
          ],
        ),
    );
  }
}
