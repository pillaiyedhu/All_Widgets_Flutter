import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FractionalTranslationDemo extends StatefulWidget {
  FractionalTranslationDemoState createState() {
    return FractionalTranslationDemoState();
  }
}

class FractionalTranslationDemoState extends State<FractionalTranslationDemo> {
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
          color:Colors.red ,
          height:100,
          width:100,
          ),

          FractionalTranslation(
            translation: Offset(1, -1),
            child: Container(
              color:Colors.pink ,
              height:100,
              width:100,
            ),
          ),

          FractionalTranslation(
            translation: Offset(1, -1),
            child: Container(
              color:Colors.yellow ,
              height:100,
              width:100,
            ),
          )

        ],
        
      ),

    );
  }
}
