import 'package:flutter/material.dart';

class ChipDemo extends StatefulWidget {
  @override
  ChipDemoState createState() {
    return ChipDemoState();
  }
}

class ChipDemoState extends State<ChipDemo> {
  bool onChange = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Flutter Widget Viewer"),
          centerTitle: true,
          backgroundColor: Colors.pink,
        ),
        body: Center(
          child: Chip(
            label: Text("This is a chip"),
            deleteIconColor: Colors.black,
            onDeleted: () {
              print("Item Deleted");
            },
          ),
        ));
  }
}
