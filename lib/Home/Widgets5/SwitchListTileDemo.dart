import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SwitchListTileDemo extends StatefulWidget {
  SwitchListTileDemoState createState() {
    return SwitchListTileDemoState();
  }
}

class SwitchListTileDemoState extends State<SwitchListTileDemo> {
  bool check = false;
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SwitchListTile(
          value: check,
          onChanged: (bool value) {
            setState(() {
              check = value;
            });
          },
          title: Text("Lights"),
          secondary: Icon(Icons.light),
        ),
      ),
    );
  }
}
