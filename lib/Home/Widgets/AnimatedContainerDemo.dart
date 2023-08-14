import 'package:flutter/material.dart';

class AnimatedContainerDemo extends StatefulWidget {
  AnimatedContainerDemoState createState() {
    return AnimatedContainerDemoState();
  }
}

class AnimatedContainerDemoState extends State<AnimatedContainerDemo> {
  bool selected = false;
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Flutter Widget Viewer"),
        centerTitle: true,
        backgroundColor: Colors.pink,
      ),
      body: Center(
        child: GestureDetector(
          onTap: () {
            setState(() {
              selected = !selected;
            });
          },

          child: AnimatedContainer(
            color: selected ? Colors.black : Colors.amber,
            width: selected ? 100 : 200,
            height: selected ? 200 : 100,
            duration: Duration(seconds: 2),
            child: FlutterLogo(),
          ),
        ),
      ),
    );
  }
}
