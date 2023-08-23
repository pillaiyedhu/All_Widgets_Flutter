import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SelectableTextDemo extends StatefulWidget {
  SelectableTextDemoState createState() {
    return SelectableTextDemoState();
  }
}

class SelectableTextDemoState extends State<SelectableTextDemo> {
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SelectableText('This is the text',onSelectionChanged: (selection, cause) {
          
        },),
      ),
    );
  }
}
