import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LinearProgressIndicatorDemo extends StatefulWidget {
  LinearProgressIndicatorDemoState createState() {
    return LinearProgressIndicatorDemoState();
  }
}

class LinearProgressIndicatorDemoState
    extends State<LinearProgressIndicatorDemo> with TickerProviderStateMixin {
  late AnimationController controller =
      AnimationController(vsync: this, duration: Duration(seconds: 2))
        ..addListener(() {
          setState(() {});
        })..repeat(reverse: false);

  @override
  void dispose() {
    // TODO: implement dispose
    controller.dispose();
    super.dispose();
  }

  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          LinearProgressIndicator(
            value: controller.value,
          ),
          SizedBox(
            height: 20,
          ),
          LinearProgressIndicator(
            color: Colors.red,
          )
        ],
      ),
    ));
  }
}
