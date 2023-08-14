import 'package:flutter/material.dart';

class BuilderDemo extends StatefulWidget {
  @override
  BuilderDemoState createState() {
    return BuilderDemoState();
  }
}

class BuilderDemoState extends State<BuilderDemo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Flutter Widget Viewer"),
        centerTitle: true,
        backgroundColor: Colors.pink,
      ),
      body: Container(
        child: myBuilder(),
      ),
    );
  }
}

myBuilder() => Builder(builder: (BuildContext context) {
      return Text("This is Builder");
    });
