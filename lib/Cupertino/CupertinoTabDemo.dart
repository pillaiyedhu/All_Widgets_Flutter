import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CupertinoTabDemo extends StatefulWidget {
  CupertinoTabDemoState createState() {
    return CupertinoTabDemoState();
  }
}

class CupertinoTabDemoState extends State<CupertinoTabDemo> {
  Widget build(BuildContext context) {
    return CupertinoTabScaffold(
        tabBar: CupertinoTabBar(items: [
          BottomNavigationBarItem(icon: Icon(Icons.home)),
          BottomNavigationBarItem(icon: Icon(Icons.settings)),
        ]),
        tabBuilder: (context, index) {
          return CupertinoTabView(
            builder: (context) {
              return Center(
                child: Icon(index == 0 ? (CupertinoIcons.home):(CupertinoIcons.settings))
              );
            },
          );
        });
  }
}
