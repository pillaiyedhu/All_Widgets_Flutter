import 'package:flutter/material.dart';

class ChoiceChipDemo extends StatefulWidget {
  @override
  ChoiceChipDemoState createState() {
    return ChoiceChipDemoState();
  }
}

class ChoiceChipDemoState extends State<ChoiceChipDemo> {
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
          child: ChoiceChip(
            label: Text("This is a chip"),
            selected: onChange,
            selectedColor: Colors.blue,
            onSelected: (newBool) {
              setState(() {
                onChange = newBool;
              });
            },
          ),
        ));
  }
}
