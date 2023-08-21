import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TextButtonDemo extends StatefulWidget {
  TextButtonDemoState createState() {
    return TextButtonDemoState();
  }
}

class TextButtonDemoState extends State<TextButtonDemo> {
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            TextButton(onPressed: null, child: Text("Disabled")),
            SizedBox(height: 20),
            TextButton(onPressed: () {}, child: Text("Enabled")),
            SizedBox(height: 20),
            

          ],
        ),
      ),
    );
  }
}
