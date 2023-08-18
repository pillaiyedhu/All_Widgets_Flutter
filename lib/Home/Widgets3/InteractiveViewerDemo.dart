import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class InteractiveViewerDemo extends StatefulWidget {
  InteractiveViewerDemoState createState() {
    return InteractiveViewerDemoState();
  }
}

class InteractiveViewerDemoState extends State<InteractiveViewerDemo> {
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("This is Interactive Viewer"),
      ),
      body: Container(
        color: Colors.amber,
        child: InteractiveViewer(
          child: Scaffold(
            appBar: AppBar(
              title: Text("This is inside part"),
            ),
          )
        ),
      ),
    );
  }
}
