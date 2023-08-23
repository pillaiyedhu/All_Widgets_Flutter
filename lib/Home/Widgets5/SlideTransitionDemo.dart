import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SlideTransitionDemo extends StatefulWidget {
  SlideTransitionDemoState createState() {
    return SlideTransitionDemoState();
  }
}

class SlideTransitionDemoState extends State<SlideTransitionDemo>
    with TickerProviderStateMixin {
  late AnimationController controller =
      AnimationController(duration: Duration(seconds: 2), vsync: this)..repeat(reverse: true);

  late Animation<Offset> animation =
      Tween<Offset>(begin: Offset.zero, end: Offset.fromDirection(0, 1.5)).animate(
        controller
      );

  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          child: SlideTransition(
            position: animation,
            child: FlutterLogo(
              size: 200,
            ),
          )

        ),
      ),
    );
  }
}
