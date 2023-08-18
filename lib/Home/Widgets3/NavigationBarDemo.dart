import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class NavigationBarDemo extends StatefulWidget {
  NavigationBarDemoState createState() {
    return NavigationBarDemoState();
  }
}

class NavigationBarDemoState extends State<NavigationBarDemo> {
  int currentindex = 0;
  static const List bars = [
    Icon(Icons.home),
    Icon(Icons.search),
    Icon(Icons.person)
  ];

  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        child: bars.elementAt(currentindex),
      ),
      bottomNavigationBar: NavigationBar(
        onDestinationSelected: (value) {
          setState(() {
            currentindex = value;
          });
        },
        selectedIndex: currentindex,
        destinations: [
          NavigationDestination(icon: Icon(Icons.home), label: 'Home'),
          NavigationDestination(icon: Icon(Icons.search), label: 'Search'),
          NavigationDestination(icon: Icon(Icons.person), label: 'Profile'),
        ],
      ),
    );
  }
}
