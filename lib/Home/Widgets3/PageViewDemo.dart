import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PageViewDemo extends StatefulWidget {
  PageViewDemoState createState() {
    return PageViewDemoState();
  }
}

class PageViewDemoState extends State<PageViewDemo> {
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: PageView(
          children: [
            Container(
              alignment: Alignment.center,
              child: Text("Page1"),
              color: Colors.blue,
            ),
            Container(
              alignment: Alignment.center,
              child: Text("Page2"),
              color: Colors.cyan,
            ),
            Container(
              alignment: Alignment.center,
              child: Text("Page3"),
              color: Colors.teal,
            ),
          ],
        ),
      ),
    );
  }
}
