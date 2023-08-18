import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class GridPaperDemo extends StatefulWidget {
  GridPaperDemoState createState() {
    return GridPaperDemoState();
  }
}

class GridPaperDemoState extends State<GridPaperDemo> {
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        height: double.infinity,
        width: double.infinity,
        child: GridPaper(
          color: Colors.pink,
          divisions: 6,
          interval: 200,
          subdivisions: 5,
        ),
      ),
    );
  }
}
