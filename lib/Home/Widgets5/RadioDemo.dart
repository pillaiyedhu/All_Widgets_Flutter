import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class RadioDemo extends StatefulWidget {
  RadioDemoState createState() {
    return RadioDemoState();
  }
}
List<String> list = ['Radio1', 'Radio2'];

class RadioDemoState extends State<RadioDemo> {
  String currentState = list[0];

  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
            child: Column(
      children: [
        ListTile(
            title: Text("Option 1"),
            leading: Radio(
              value: list[0],
              groupValue: currentState,
              onChanged: (value) {
                setState(){
                  currentState = value.toString();
                }
              },
            )
        ),

        ListTile(
            title: Text("Option 2"),
            leading: Radio(
              value: list[1],
              groupValue: currentState,
              onChanged: (value) {
                setState(){
                  currentState = value.toString();
                }
              },
            ))
      ],
    )));
  }
}
