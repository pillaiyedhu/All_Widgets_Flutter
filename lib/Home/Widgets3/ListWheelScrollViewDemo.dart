import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ListWheelScrollViewDemo extends StatefulWidget {
  ListWheelScrollViewDemoState createState() {
    return ListWheelScrollViewDemoState();
  }
}

class ListWheelScrollViewDemoState extends State<ListWheelScrollViewDemo> {
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ListWheelScrollView(
          useMagnifier: true,
          itemExtent: 50, 
          children: List.generate(
            50, 
            (index) => ListTile(
              title: Text("Flutter"),
              leading: Icon(Icons.add),
            )
          )
        ),
      ),
    );
  }
}
