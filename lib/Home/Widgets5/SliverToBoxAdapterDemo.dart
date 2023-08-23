import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SliverToBoxAdapterDemo extends StatefulWidget {
  SliverToBoxAdapterDemoState createState() {
    return SliverToBoxAdapterDemoState();
  }
}

class SliverToBoxAdapterDemoState extends State<SliverToBoxAdapterDemo> {
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: SizedBox(
              height: 50,
              child: Text("This is sized box"),
            ),
          )
        ],
      ),
    );
  }
}
