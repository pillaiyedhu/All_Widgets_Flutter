import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CupertinoSegmentedControlDemo extends StatefulWidget {
  CupertinoSegmentedControlDemoState createState() {
    return CupertinoSegmentedControlDemoState();
  }
}

class CupertinoSegmentedControlDemoState
    extends State<CupertinoSegmentedControlDemo> {
  String? name;
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
        CupertinoSegmentedControl(
          children: {
            'Flutter': Container(
              color: name =='Flutter'?Colors.teal:Colors.white,
              child: Text('Flutter'),
            ),
            'Spring': Container(
              color: name =='Spring'?Colors.teal:Colors.white,
              child: Text('Spring'),
            ),
            'Django': Container(
              color: name =='Django'?Colors.teal:Colors.white,
              child: Text('Django'),
            ),
          },
          onValueChanged: (String value) {
            setState(() {
              name = value;
            });
          }
        ),

        SizedBox(),
          name != null ? Text(name!):Container()
        
  ]));
  }
}
