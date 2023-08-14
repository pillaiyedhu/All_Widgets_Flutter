import 'package:flutter/material.dart';

class CheckBoxDemo extends StatefulWidget {
  @override
  CheckBoxDemoState createState() {
    return CheckBoxDemoState();
  }
}

class CheckBoxDemoState extends State<CheckBoxDemo> {
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
          child: Checkbox(
            value: onChange,
            activeColor: Colors.blue,
            // tristate: true,
            onChanged: (newBool) {
              setState(() {
                onChange = newBool!;
              });
            },

          ),
        ));
  }
}

myBuilder() => Builder(builder: (BuildContext context) {
      return Text("This is Builder");
    });
