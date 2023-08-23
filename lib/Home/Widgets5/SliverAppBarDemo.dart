import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SliverAppBarDemo extends StatefulWidget {
  SliverAppBarDemoState createState() {
    return SliverAppBarDemoState();
  }
}

class SliverAppBarDemoState extends State<SliverAppBarDemo> {
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            pinned:true ,
            floating: true,
            expandedHeight: 260,
            
            flexibleSpace: FlexibleSpaceBar(

              title: Text('SliverAppBar'),
              background: Image.asset('assets/picture1.jpg',fit: BoxFit.cover,),
            ),
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate(
              childCount: 20,
              (context, index) => ListTile(
                title: Text("List $index"),
              )
            )
          )
        ],
      ),
    );
  }
}
