import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MaterialButtonDemo extends StatefulWidget {
  MaterialButtonDemoState createState() {
    return MaterialButtonDemoState();
  }
}

class MaterialButtonDemoState extends State<MaterialButtonDemo> {
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          alignment: Alignment.center,
          child: MaterialButton(
            onPressed: () {},
            child: Text("Material Button"),
            color: Colors.green,
            splashColor: Colors.teal,
            focusColor: Colors.blue,
          ),
        ),
      ),
    );
  }
}
