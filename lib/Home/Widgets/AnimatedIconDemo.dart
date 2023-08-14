import 'package:flutter/material.dart';

class AnimatedIconDemo extends StatefulWidget {
  @override
  AnimatedIconDemoState createState() {
    return AnimatedIconDemoState();
  }
}

class AnimatedIconDemoState extends State<AnimatedIconDemo>
    with TickerProviderStateMixin {
  bool isPlay = false;
  late AnimationController controller;

  @override
  void initState() {
    // TODO: implement initState
    controller =
        AnimationController(duration: const Duration(seconds: 1), vsync: this);
    super.initState();
  }

  @override
  void dispose() {
    controller.dispose();
    // TODO: implement dispose
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Flutter Widget Viewer"),
        centerTitle: true,
        backgroundColor: Colors.pink,
      ),
      body: Container(
        child: GestureDetector(
            onTap: () {
              if (isPlay == false) {
                controller.forward();
                isPlay = true;
              } else {
                controller.reverse();
                isPlay = false;
              }
            },
            child: AnimatedIcon(
                icon: AnimatedIcons.pause_play, progress: controller)),
      ),
    );
  }
}
