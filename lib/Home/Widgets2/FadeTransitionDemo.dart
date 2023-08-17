import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FadeTransitionDemo extends StatefulWidget {
  FadeTransitionDemoState createState() {
    return FadeTransitionDemoState();
  }
}

class FadeTransitionDemoState extends State<FadeTransitionDemo>
    with TickerProviderStateMixin {
  late final AnimationController animationController = AnimationController(
    vsync: this,
    duration: Duration(seconds: 2),
  )..repeat(reverse: true);

  late final Animation animation =
      CurvedAnimation(parent: animationController, curve: Curves.easeIn);

  @override
  void dispose() {
    // TODO: implement dispose
    animationController.dispose();
    super.dispose();
  }

  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child:Container(
          height: 100,
          width: 100,
          child: FadeTransition(
            opacity: animationController,
            child: FlutterLogo(),
          ),
        )
      ),
    );
  }
}
