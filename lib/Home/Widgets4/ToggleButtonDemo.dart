import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ToggleButtonDemo extends StatefulWidget {
  ToggleButtonDemoState createState() {
    return ToggleButtonDemoState();
  }
}

class ToggleButtonDemoState extends State<ToggleButtonDemo> {
  List<bool> check = [false, false, false];

  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ToggleButtons(
          isSelected: check,
          children: const [
            Icon(Icons.home),
            Icon(Icons.person),
            Icon(Icons.settings)
          ],
          onPressed: (index) {
            setState(() {
              check[index] = !check[index];
            });
          },
        ),
      ),
    );
  }
}
