import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class RotationTransitionDemo extends StatefulWidget {
  RotationTransitionDemoState createState() {
    return RotationTransitionDemoState();
  }
}

class RotationTransitionDemoState extends State<RotationTransitionDemo>
    with TickerProviderStateMixin {
  late AnimationController controller =
      AnimationController(duration: Duration(seconds: 2), vsync: this)
        ..repeat(reverse: true);

  late Animation<double> animation =
      CurvedAnimation(parent: controller, curve: Curves.decelerate);

  @override
  void dispose() {
    // TODO: implement dispose
    controller.dispose();
    super.dispose();
  }

  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: RotationTransition(
          turns: animation,
          child: FlutterLogo(
            size: 200,
          ),
        ),
      ),
    );
  }
}
