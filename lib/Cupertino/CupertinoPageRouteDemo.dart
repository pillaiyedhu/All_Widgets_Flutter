import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CupertinoPageRouteDemo extends StatefulWidget {
  CupertinoPageRouteDemoState createState() {
    return CupertinoPageRouteDemoState();
  }
}

class CupertinoPageRouteDemoState extends State<CupertinoPageRouteDemo> {
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: CupertinoButton.filled(
            child: Text("Click to move to next page"),
            onPressed: () {
              Navigator.push(
                  context, CupertinoPageRoute(builder: (context) => PageTwo()));
            }),
      ),
    );
  }
}

class PageTwo extends StatelessWidget {
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      body: Text("This is second page"),
    );
  }
}
