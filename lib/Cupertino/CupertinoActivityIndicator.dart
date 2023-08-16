import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CupertinoActivityIndicatorDemo extends StatefulWidget {
  CupertinoActivityIndicatorDemoState createState() {
    return CupertinoActivityIndicatorDemoState();
  }
}

class CupertinoActivityIndicatorDemoState
    extends State<CupertinoActivityIndicatorDemo> {
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      child: Center(
        child: CupertinoActivityIndicator(
          
        ),
      ),
    );
  }
}
