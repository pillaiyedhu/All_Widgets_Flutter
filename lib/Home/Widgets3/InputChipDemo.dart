import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class InputChipDemo extends StatefulWidget {
  InputChipDemoState createState() {
    return InputChipDemoState();
  }
}

class InputChipDemoState extends State<InputChipDemo> {
  bool isSelected = false;
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: InputChip(
          label: Text('Press Me'),
          avatar: CircleAvatar(
            backgroundColor: Colors.teal,
          ),
          selected: isSelected,
          onSelected: (value) {
            setState(() {
              isSelected = value;
            });      
          },
          selectedColor: Colors.white,
          deleteIcon: Icon(Icons.cancel),
          onDeleted: () {},
        ),
      ),
    );
  }
}
