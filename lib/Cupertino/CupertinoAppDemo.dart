import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CupertinoAppDemo extends StatefulWidget {
  CupertinoAppDemoState createState() {
    return CupertinoAppDemoState();
  }
}

class CupertinoAppDemoState
    extends State<CupertinoAppDemo> {
  Widget build(BuildContext context) {
    return CupertinoApp(
      theme: CupertinoThemeData(
        brightness: Brightness.dark
      ),
      home: CupertinoPageScaffold(
        child: Text("THis is Cupertino App"),
        backgroundColor: Colors.orange,
      ),
    );
  }
}
