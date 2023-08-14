import 'package:flutter/material.dart';

class AnimatedAlignDemo extends StatefulWidget {
  @override
  AnimatedAlignDemoState createState() {
    return AnimatedAlignDemoState();
  }
}

class AnimatedAlignDemoState extends State<AnimatedAlignDemo> {
  bool selected = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Flutter Widget Viewer"),
          centerTitle: true,
          backgroundColor: Colors.pink,
        ),
        body: Center(
          child: GestureDetector(

            onTap: () => setState(() {
              selected = !selected;
            }),
            
            child: Container(
              height: 100,
              width: double.infinity,
              color: Colors.black,
              child: AnimatedAlign(
                alignment: selected ? Alignment.topLeft : Alignment.bottomRight,
                duration: const Duration(seconds: 2),
                child: FlutterLogo(),

              )
            )
          ),
        ));
  }
}
