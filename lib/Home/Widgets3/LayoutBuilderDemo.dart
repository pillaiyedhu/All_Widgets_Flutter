import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LayoutBuilderDemo extends StatefulWidget {
  LayoutBuilderDemoState createState() {
    return LayoutBuilderDemoState();
  }
}

class LayoutBuilderDemoState extends State<LayoutBuilderDemo> {
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: LayoutBuilder(
          builder: (context, constraints) {
            if (constraints.maxWidth > 600) {
              return Center(
                child: Image(image: AssetImage('assets/picture1.jpg')),
              );
            } else {
              return Center(
                child: Text("The space is 600 or less"),
              );
            }
          },
        ),
      ),
    );
  }
}
