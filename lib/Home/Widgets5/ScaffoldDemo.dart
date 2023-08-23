import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ScaffoldDemo extends StatefulWidget {
  ScaffoldDemoState createState() {
    return ScaffoldDemoState();
  }
}

class ScaffoldDemoState extends State<ScaffoldDemo> {
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("This is Scaffold"),
      ),
      backgroundColor: Colors.orangeAccent,
      body: Center(
        child: ElevatedButton(onPressed: () {}, child: Text("Button")),
      ),
      drawer: Drawer(
        backgroundColor: Colors.cyan,
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home'
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile'

          )
        ]
      ),
    );
  }
}
