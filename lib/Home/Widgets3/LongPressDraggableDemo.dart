import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LongPressDraggableDemo extends StatefulWidget {
  LongPressDraggableDemoState createState() {
    return LongPressDraggableDemoState();
  }
}

class LongPressDraggableDemoState extends State<LongPressDraggableDemo> {
  Offset offset = Offset(200, 200);
  Widget build(BuildContext context) {
    return Scaffold(body: Container(child: LayoutBuilder(
      builder: (context, constraints) {
        return Stack(
          children: [
            Positioned(
                left: offset.dx,
                top: offset.dy,
                child: LongPressDraggable(
                  child: Image(
                    image: AssetImage('assets/picture1.jpg'),
                    height: 100,
                    width: 200,
                  ),
                  feedback: Image.asset('assets/picture1.jpg'),
                  onDragEnd: (details) {
                    setState(() {
                      offset = Offset(details.offset.dx, details.offset.dy);
                    });
                  },
                ))
          ],
        );
      },
    )));
  }
}
