import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DropDownButtonDemo extends StatefulWidget {
  DropDownButtonDemoState createState() {
    return DropDownButtonDemoState();
  }
}

class DropDownButtonDemoState extends State<DropDownButtonDemo> {
  String val = 'One';
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: DropdownButton(
          value: val,
          icon: const Icon(Icons.menu),
          onChanged: (value) {
              setState(() {
                val = value.toString();
              });
            },
          items:const [ 
            DropdownMenuItem(
              child: Text("One"),
              value: "One"
            ),
            DropdownMenuItem(
              child: Text("Two"),
              value: "Two"
            ),
            DropdownMenuItem(
              child: Text("Three"),
              value: "Three"
            ),
              
            ]
              
            ),
            ),
    );
  }
}
