import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class IgnoreButtonDemo extends StatefulWidget {
  IgnoreButtonDemoState createState() {
    return IgnoreButtonDemoState();
  }
}

class IgnoreButtonDemoState extends State<IgnoreButtonDemo> {
  bool pressed = false;
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ElevatedButton(
              onPressed: () {
                setState(() {
                  pressed = !pressed;
                });
              },
              child: pressed ? Text("Closed") : Text("Open"),
              style: ElevatedButton.styleFrom(
                backgroundColor: pressed ? Colors.red : Colors.green,
              )
          ),
          SizedBox(height: 20,),   
          IgnorePointer(
            ignoring: pressed,
            child: ElevatedButton(
              child: Text("Press Me"),
              onPressed: () {},
            ),
          )
        ],
      ),
    );
  }
}
