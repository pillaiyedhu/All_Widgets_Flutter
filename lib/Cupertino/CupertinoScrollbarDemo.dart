import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CupertinoScrollBarDemo extends StatefulWidget {
  CupertinoScrollBarDemoState createState() {
    return CupertinoScrollBarDemoState();
  }
}

class CupertinoScrollBarDemoState extends State<CupertinoScrollBarDemo> {
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: CupertinoScrollbar(child: ListView.builder(
        itemCount: 50,
        itemBuilder: (context, index) {
          return Text('$index',style: TextStyle(fontSize: 20),);
        },
      ),
      radiusWhileDragging: Radius.circular(20),
      thickness: 9,
      thicknessWhileDragging: 20,
      
      ),

    ));
  }
}
