import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CupertinoButtonDemo extends StatefulWidget {
  CupertinoButtonDemoState createState() {
    return CupertinoButtonDemoState();
  }
}

class CupertinoButtonDemoState extends State<CupertinoButtonDemo> {
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Column(
          children: [
            CupertinoButton(
              child: Text("Enable"), 
              onPressed: null
            ),
            CupertinoButton.filled(
              child: Text("Enable"), 
              onPressed: (){}
            )
          ],
        ),
      ),
    );
  }
}
