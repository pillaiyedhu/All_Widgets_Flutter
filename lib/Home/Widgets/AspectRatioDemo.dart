import 'package:flutter/material.dart';

class AspectRatioDemo extends StatefulWidget {
  @override
  AspectRatioDemoState createState() {
    return AspectRatioDemoState();
  }
}

class AspectRatioDemoState extends State<AspectRatioDemo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Flutter Widget Viewer"),
          centerTitle: true,
          backgroundColor: Colors.pink,
        ),
        body: Center(
          child: Container(
            alignment: Alignment.center,
            height: 500,
            width: 500,
            color: Colors.black,
            child: AspectRatio(
              aspectRatio: 1/2,
              child: Container(
                color: Colors.red,
              ),
            ),
          )

        )
    );
  }
}
