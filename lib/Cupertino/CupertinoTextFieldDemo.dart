import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CupertinoTextFieldDemo extends StatefulWidget {
  CupertinoTextFieldDemoState createState() {
    return CupertinoTextFieldDemoState();
  }
}

class CupertinoTextFieldDemoState extends State<CupertinoTextFieldDemo> {
  TextEditingController textEditingController = TextEditingController(text: "Enter text");
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          child: Column(
            children: [
              CupertinoTextField(
                controller: textEditingController,
              ),
              SizedBox(
                height: 20,
              ),
              Text(textEditingController.text.toString())
            ],
          ),
        ),
      ),
    );
  }
}
