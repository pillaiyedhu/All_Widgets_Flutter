import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DismissableDemo extends StatefulWidget {
  DismissableDemoState createState() {
    return DismissableDemoState();
  }
}

class DismissableDemoState extends State<DismissableDemo> {
  List<int> list = List.generate(100, (index) => index);

  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: list.length,
        itemBuilder: (context, index) {
          return Dismissible(
            key: ValueKey<int>(list[index]),
            background: Container(
              color: Colors.red,
              child: Icon(Icons.delete),
            ),
            onDismissed: (direction) {
              setState(() {
                list.remove(index);
              });
            },
            child: ListTile(
              title: Text("List no $index"),
            ),
          );
        },
      ),
    );
  }
}
