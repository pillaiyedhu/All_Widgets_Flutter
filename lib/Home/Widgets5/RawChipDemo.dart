import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class RawChipDemo extends StatefulWidget {
  RawChipDemoState createState() {
    return RawChipDemoState();
  }
}

class RawChipDemoState extends State<RawChipDemo> {
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: RawChip(
          label: Text("Hello"),
          avatar: Icon(Icons.person),
          deleteIcon: Icon(Icons.delete),
          onPressed: (){},
          onDeleted: (){},
        ),
      ),
    );
  }
}
