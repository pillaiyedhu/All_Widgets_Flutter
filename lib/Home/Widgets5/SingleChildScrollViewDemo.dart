import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SingleChildScrollViewDemo extends StatefulWidget {
  SingleChildScrollViewDemoState createState() {
    return SingleChildScrollViewDemoState();
  }
}

class SingleChildScrollViewDemoState extends State<SingleChildScrollViewDemo> {
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
      child: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: 
          List.generate(
          50,(index) => ListTile(
            title: Text("Title $index"),
          ),
        ),
        )
        
      ),
     ) );
  }
}
