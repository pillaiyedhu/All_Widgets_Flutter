import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SliverPaddingDemo extends StatefulWidget {
  SliverPaddingDemoState createState() {
    return SliverPaddingDemoState();
  }
}

class SliverPaddingDemoState extends State<SliverPaddingDemo> {
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverPadding(
            padding: EdgeInsets.all(50),
            sliver: SliverList(
              delegate: SliverChildListDelegate([
                Image.asset('assets/picture1.jpg')
              ])
            ),
          ),
        ],
      ),
    );
  }
}
