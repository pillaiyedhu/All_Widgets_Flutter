import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FadeInImageDemo extends StatefulWidget {
  FadeInImageDemoState createState() {
    return FadeInImageDemoState();
  }
}

class FadeInImageDemoState extends State<FadeInImageDemo> {
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: FadeInImage.assetNetwork(
          placeholder: 'assets/picture1.jpg', 
          image: 'assets/picture2.jpg'
        ),
      ),
    );
  }
}
