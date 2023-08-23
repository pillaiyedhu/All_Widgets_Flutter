import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SliverGridDemo extends StatefulWidget {
  SliverGridDemoState createState() {
    return SliverGridDemoState();
  }
}

class SliverGridDemoState extends State<SliverGridDemo> {
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverGrid(
            delegate: SliverChildBuilderDelegate((context, index) => Container(
              color: Colors.orange[100*(index%9+1)],
            )),
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3
            )
          )
        ],
      ),
    );
  }
}
