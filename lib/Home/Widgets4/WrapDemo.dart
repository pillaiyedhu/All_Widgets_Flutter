import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class WrapDemo extends StatefulWidget {
  WrapDemoState createState() {
    return WrapDemoState();
  }
}

class WrapDemoState extends State<WrapDemo> {
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Wrap(
          spacing: 10,
          runSpacing: 10,
          children: List.generate(10, (index) {
            return Chip(
              label: Text('Chip $index'),
              avatar: CircleAvatar(
                backgroundColor: Colors.orange,
                child: Icon(Icons.person),
              ),
            );
          }),
        ),
      ),
    );
  }
}
