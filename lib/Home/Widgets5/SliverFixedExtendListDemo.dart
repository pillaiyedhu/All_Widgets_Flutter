import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SliverFixedExtendListDemo extends StatefulWidget {
  SliverFixedExtendListDemoState createState() {
    return SliverFixedExtendListDemoState();
  }
}

class SliverFixedExtendListDemoState extends State<SliverFixedExtendListDemo> {
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          SliverFixedExtentList(
              delegate: SliverChildBuilderDelegate(
                (context, index) {
                  return Container(
                    alignment: Alignment.center,
                    child: Text("Text $index"),
                    color: index.isEven?Colors.blue:Colors.grey,
                  );
                },
              ),
              itemExtent: 50
            )
        ],
      ),
    );
  }
}
