import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TextDemo extends StatefulWidget {
  TextDemoState createState() {
    return TextDemoState();
  }
}

class TextDemoState extends State<TextDemo> {
  Widget build(BuildContext context) {
    return Scaffold(
      body:Center(
        child: Text("THis is a big text which have 3 dots",style: TextStyle(color: Colors.teal,overflow: TextOverflow.ellipsis,fontSize: 30),),
      )
    );
  }
}
