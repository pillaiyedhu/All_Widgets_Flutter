import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ReorderableListDemo extends StatefulWidget {
  ReorderableListDemoState createState() {
    return ReorderableListDemoState();
  }
}

List<int> list = List<int>.generate(
  10,
  (index) => index,
);

class ReorderableListDemoState extends State<ReorderableListDemo> {
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
            child: ReorderableListView(
      children: List.generate(
          list.length,
          (index) => ListTile(
                key: Key('$index'),
                tileColor: list[index].isEven ? Colors.grey : Colors.blueGrey,
                title: Text('List ${list[index]}'),
              )),
      onReorder: (oldIndex, newIndex) {
        setState(() {
          if (oldIndex < newIndex) {
            newIndex = -1;
          }

          int item = list.removeAt(oldIndex);
          list.insert(newIndex, item);
        });
      },
    )));
  }
}
