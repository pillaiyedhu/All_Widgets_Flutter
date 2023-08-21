import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TabBarDemo extends StatefulWidget {
  TabBarDemoState createState() {
    return TabBarDemoState();
  }
}

class TabBarDemoState extends State<TabBarDemo> {
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3, 
      child: Scaffold(
        appBar: AppBar(
          title: Text("This is Tab Bar"),
          centerTitle: true,
          backgroundColor: Colors.deepPurpleAccent,
          bottom: TabBar(tabs: [
            Icon(Icons.home),
            Icon(Icons.pages),
            Icon(Icons.person)
          ]),
        ),
        body: TabBarView(
          children: [
            Container(
              color: Colors.blueGrey,
              child: Icon(Icons.home)
            ),

            Container(
              color: Colors.blueGrey,
              child: Icon(Icons.pages)
            ),

            Container(
              color: Colors.blueGrey,
              child: Icon(Icons.person)
            ),

          ]
        )
      )
    );
  }
}
