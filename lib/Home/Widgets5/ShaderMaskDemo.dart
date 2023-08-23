import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ShaderMaskDemo extends StatefulWidget {
  ShaderMaskDemoState createState() {
    return ShaderMaskDemoState();
  }
}

class ShaderMaskDemoState extends State<ShaderMaskDemo> {
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ShaderMask(
          shaderCallback: (bounds) {
            return RadialGradient(
              colors: [
                Colors.red,
                Colors.purple
              ]
            ).createShader(bounds);
          },
          child: Text("This is Cool Looking Text",style: TextStyle(fontSize: 30),),
        ),
      ),
    );
  }
}
