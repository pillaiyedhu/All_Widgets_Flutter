import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class RadioListTileDemo extends StatefulWidget {
  RadioListTileDemoState createState() {
    return RadioListTileDemoState();
  }
}

List<String> options = ['Option 1', 'Option 2'];

class RadioListTileDemoState extends State<RadioListTileDemo> {
  String currentState = options[0];
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Column(
        children: [
          RadioListTile(
              title: Text("Radio 1"),
              value: options[0],
              groupValue: currentState,
              onChanged: (value) {
                setState(() {
                  currentState = value.toString();
                });
              }
          ),
          RadioListTile(
              title: Text("Radio 2"),
              value: options[1],
              groupValue: currentState,
              onChanged: (value) {
                setState(() {
                  currentState = value.toString();
                });
              })
        ],
      )),
    );
  }
}
