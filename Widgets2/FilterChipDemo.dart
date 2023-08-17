import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FilterChipDemo extends StatefulWidget {
  FilterChipDemoState createState() {
    return FilterChipDemoState();
  }
}

class FilterChipDemoState extends State<FilterChipDemo> {
  bool selected = false;
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          child: FilterChip(
            selected: selected,
            label: Text('Check me'),
            onSelected: (value) {
              setState(() {
                selected = !selected;
              }); 
            },
            avatar: Icon(Icons.check),
          ),
        ),
      ),
    );
  }
}
