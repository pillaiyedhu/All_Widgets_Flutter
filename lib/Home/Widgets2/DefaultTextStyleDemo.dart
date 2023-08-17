import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DefaultTextStyleDemo extends StatefulWidget {
  DefaultTextStyleDemoState createState() {
    return DefaultTextStyleDemoState();
  }
}

class DefaultTextStyleDemoState extends State<DefaultTextStyleDemo> {
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Text("Flutter Widget"),
            DefaultTextStyle(
              style: TextStyle(
                fontSize: 26,
                color: Colors.red,
                fontWeight: FontWeight.bold
              ), 
              child: Center(
                child: Column(
                  children: [
                    Text("This is flutter 1"),
                    Text("This is flutter 2",style: TextStyle(color: Colors.teal),)
                  ],
                ),
              )
            )
          ],
        ),
      ),

    );
  }
}
