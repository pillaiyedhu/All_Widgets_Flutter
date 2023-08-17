import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DrawerDemo extends StatefulWidget {
  DrawerDemoState createState() {
    return DrawerDemoState();
  }
}

class DrawerDemoState extends State<DrawerDemo> {
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
          child: ListView(
            children: [
              ListTile(
                title: Text('List 1'),
              ),
              ListTile(
                title: Text('List 2'),
              )
            ],
          ),
        ),
      appBar: AppBar( 
        title: Text("Drawer"),
      ),
      body: Container(
      ),
    );
  }
}
