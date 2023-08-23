import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ScrollBarDemo extends StatefulWidget {
  ScrollBarDemoState createState() {
    return ScrollBarDemoState();
  }
}

class ScrollBarDemoState extends State<ScrollBarDemo> {
  ScrollController controller = ScrollController();

  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Scrollbar(
          controller: controller,
          child: ListView.builder(
            itemCount: 50,
            controller: controller,
            itemBuilder: (context, index) => Text("Text $index"),
          )
        ),
      ),
    );
  }
}
