import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SliverListDemo extends StatefulWidget {
  SliverListDemoState createState() {
    return SliverListDemoState();
  }
}

class SliverListDemoState extends State<SliverListDemo> {
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverList(

            delegate: SliverChildBuilderDelegate((context, index) => Container(
              color: index.isEven?Colors.orange:Colors.blue,
              child: Text("Text $index"),
            ),
            childCount: 50)
          )
        ],
      ),
    );
  }
}
