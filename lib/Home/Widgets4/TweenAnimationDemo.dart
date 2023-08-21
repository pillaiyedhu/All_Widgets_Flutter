import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TweenAnimationDemo extends StatefulWidget {
  TweenAnimationDemoState createState() {
    return TweenAnimationDemoState();
  }
}

class TweenAnimationDemoState extends State<TweenAnimationDemo> {
  double value = 100;
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: TweenAnimationBuilder(
          tween: Tween<double>(begin: 0, end: value),
          duration: const Duration(seconds: 2),
          builder: (context, size, child) {
            return IconButton(
              iconSize: size,
                onPressed: () {
                  setState(() {
                    value = value == 100 ? 250 : 100;
                  });
                },
                icon: const Icon(Icons.flutter_dash));
          },
        ),
      ),
    );
  }
}
