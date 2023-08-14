import 'package:flutter/material.dart';

class AnimatedCrossFadeDemo extends StatefulWidget {
  @override
  AnimatedCrossFadeDemoState createState() {
    return AnimatedCrossFadeDemoState();
  }
}

class AnimatedCrossFadeDemoState extends State<AnimatedCrossFadeDemo> {
  bool pressed = false;
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: AppBar(
        title: const Text("Flutter Widget Viewer"),
        centerTitle: true,
        backgroundColor: Colors.pink,
      ),
      body: Container(
        color: const Color.fromARGB(255, 231, 181, 177),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children:[ 
            ElevatedButton(
            onPressed: () {
              setState(() {
                pressed = !pressed;
              });
            }, child: const Text("Animated Cross Fade"),
      
          ),

          AnimatedCrossFade(
              firstChild: Image.asset('picture1.jpg'), 
              secondChild: Image.asset('picture2.jpg'), 
              crossFadeState: pressed ? CrossFadeState.showFirst : CrossFadeState.showSecond,
              duration: const Duration(seconds: 1),
              alignment: pressed ? Alignment.centerRight : Alignment.centerRight
            )
          
          ],

        ),
        
      ),
    );
  }
}
