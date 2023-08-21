import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ThemeDemo extends StatefulWidget {
  ThemeDemoState createState() {
    return ThemeDemoState();
  }
}

class ThemeDemoState extends State<ThemeDemo> {
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          color: Theme.of(context).primaryColor,
        ),
      ),
    );
  }
}
