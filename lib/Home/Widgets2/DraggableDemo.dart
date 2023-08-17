import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DraggableDemo extends StatefulWidget {
  DraggableDemoState createState() {
    return DraggableDemoState();
  }
}

class DraggableDemoState extends State<DraggableDemo> {
  Color catchColor = Colors.red;

  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Draggable(
                  child: Container(
                    height: 100,
                    width: 100,
                    color: Colors.orange,
                  ),
                  onDraggableCanceled: (velocity, offset) {},
                  feedback: Container(
                    height: 150,
                    width: 150,
                    color: Colors.orange.withOpacity(0.5),
                  )),
              DragTarget(
                onAccept: (Color color) {
                  setState(() {
                    catchColor = color;
                  });
                },
                builder: (context, acceptedData, rejectedData) {
                  return Container(
                    height: 200,
                    width: 200,
                    color: acceptedData.isEmpty ? catchColor : Colors.grey,
                  );
                },
              )
            ]),
      ),
    );
  }
}
