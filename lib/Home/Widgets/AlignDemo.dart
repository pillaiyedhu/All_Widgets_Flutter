import 'package:flutter/material.dart';

class AlignDemo extends StatefulWidget {
  @override
  AlignDemoState createState() {
    return AlignDemoState();
  }
}

class AlignDemoState extends State<AlignDemo> {
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
            width: double.infinity,
            height: 100,
            color: Colors.blue,
            child: Align(
              alignment: Alignment.centerLeft,
              child: FlutterLogo(),
            ),
          )

        )
    );
  }
}
