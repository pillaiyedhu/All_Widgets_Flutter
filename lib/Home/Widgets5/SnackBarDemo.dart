import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SnackBarDemo extends StatefulWidget {
  SnackBarDemoState createState() {
    return SnackBarDemoState();
  }
}

class SnackBarDemoState extends State<SnackBarDemo> {
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
            onPressed: () {
              ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                content: Text("Snack Bar"),
                action: SnackBarAction(label: 'Undo', onPressed: () {}),
              ));
            },
            child: Text("Snack Bar")),
      ),
    );
  }
}
