import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DragableScrollableSheetDemo extends StatefulWidget {
  DragableScrollableSheetDemoState createState() {
    return DragableScrollableSheetDemoState();
  }
}

class DragableScrollableSheetDemoState
    extends State<DragableScrollableSheetDemo> {
  Widget build(BuildContext context) {
    return Scaffold(
      body: DraggableScrollableSheet(
        builder: (BuildContext context, ScrollController scrollController) {
          return Container(
            color: Colors.cyan,
            child: ListView.builder(
              controller: scrollController,
              itemCount: 25,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text("The index is : $index"),
                );
              },
            ),
          );
        },
      ),
    );
  }
}
