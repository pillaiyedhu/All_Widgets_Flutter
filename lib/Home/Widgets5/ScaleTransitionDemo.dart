import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ScaleTransitionDemo extends StatefulWidget {
  ScaleTransitionDemoState createState() {
    return ScaleTransitionDemoState();
  }
}

class ScaleTransitionDemoState extends State<ScaleTransitionDemo>
    with TickerProviderStateMixin {
  late AnimationController controller = AnimationController(
    duration: Duration(seconds: 2),
    vsync: this,
  )..repeat(reverse: true);

  late Animation<double> animation =
      CurvedAnimation(parent: controller, curve: Curves.easeInOut);

  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ScaleTransition(
          scale: animation,
          child: FlutterLogo(size: 200,),
        ),
      ),
    );
  }
}
