import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CupertinoSearchDemo extends StatefulWidget {
  CupertinoSearchDemoState createState() {
    return CupertinoSearchDemoState();
  }
}

class CupertinoSearchDemoState extends State<CupertinoSearchDemo> {
  TextEditingController textEditingController = TextEditingController(text:"Enter text");
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: CupertinoSearchTextField(
          controller: textEditingController,
          itemColor: Colors.teal,
        ),
    ));
  }
}
