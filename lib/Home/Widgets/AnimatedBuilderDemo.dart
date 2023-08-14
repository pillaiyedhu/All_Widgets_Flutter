import 'package:flutter/material.dart';
import 'dart:math' as math;

class AnimatedBuilderDemo extends StatefulWidget {
  @override
  AnimatedBuilderDemoState createState() {
    return AnimatedBuilderDemoState();
  }
}

class AnimatedBuilderDemoState extends State<AnimatedBuilderDemo>
    with TickerProviderStateMixin {
  late AnimationController controller = AnimationController(
    duration: const Duration(seconds: 10),
    vsync: this,
  )..repeat();

  @override
  void dispose() {

    super.dispose();
    controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black,
      child: Center(
        child: AnimatedBuilder(
          animation: controller,
          child: const FlutterLogo(
            size: 100,
          ),
          builder: (BuildContext context, Widget? child) =>
              Transform.rotate(angle: controller.value*math.pi ,child: child,),
        ),
      ),
    );
  }
}
