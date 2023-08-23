import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SizeTransitionDemo extends StatefulWidget {
  SizeTransitionDemoState createState() {
    return SizeTransitionDemoState();
  }
}

class SizeTransitionDemoState extends State<SizeTransitionDemo>
    with TickerProviderStateMixin {
  late AnimationController controller =
      AnimationController(duration: Duration(seconds: 2), vsync: this)
        ..repeat(reverse: true);

  late Animation<double> animation =
      CurvedAnimation(parent: controller, curve: Curves.easeIn);

  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: SizeTransition(
          sizeFactor: animation,
          axis: Axis.horizontal,
          axisAlignment: -2,
          child: FlutterLogo(
            size: 200,
          ),
        ),
      ),
    );
  }
}
