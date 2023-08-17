import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DrawerHeaderDemo extends StatefulWidget {
  DrawerHeaderDemoState createState() {
    return DrawerHeaderDemoState();
  }
}

class DrawerHeaderDemoState extends State<DrawerHeaderDemo> {
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Drawer Header"),
      ),
      drawer: Drawer(

        child: ListView(
          children: [
            DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.teal,
              ), child: Text("Drawer Header"),
            ),
            ListTile(
              title: Text("List 1"),
            ),
            ListTile(
              title: Text("List 2"),
            )
          ],
        ),
      ),
    );
  }
}
