import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ListenerDemo extends StatefulWidget {
  ListenerDemoState createState() {
    return ListenerDemoState();
  }
}

class ListenerDemoState extends State<ListenerDemo> {
  int onPress = 0;
  int onRelease = 0;
  double xaxis = 0;
  double yaxis = 0;

  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Container(
        height: 200,
        width: 200,
        color: Colors.cyan,
        alignment: Alignment.center,
        child: Listener(
          onPointerDown: (event) {
            setState(() {
              onPress++;
            });
          },
          onPointerUp: (event) {
            setState(() {
              onRelease++;
            });
          },
          onPointerMove: (event) {
            setState(() {
              xaxis = event.position.dx;
              yaxis = event.position.dy;
            });
          },
          child: Container(
            child: Column(
              children: [
                Text("Pressed :$onPress"),
                Text("Released :$onRelease"),
                Text('X Cor :${xaxis.toString()}'),
                Text('Y Cor :${yaxis.toString()}'),
              ],
            ),
          ),
        ),
      ),
    ));
  }
}
