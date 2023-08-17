import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DecorationBoxTransitionDemo extends StatefulWidget {
  DecorationBoxTransitionDemoState createState() {
    return DecorationBoxTransitionDemoState();
  }
}

class DecorationBoxTransitionDemoState extends State<DecorationBoxTransitionDemo> with TickerProviderStateMixin {
  DecorationTween decorationTween = DecorationTween(
    begin: BoxDecoration(
      color: Colors.grey,
      border: Border.all(color: Colors.black),
      boxShadow: <BoxShadow>[BoxShadow(
        blurRadius: 20,
        spreadRadius: 9,
        color: Colors.black        
      )
    ]),
    end: BoxDecoration(
      color: Colors.blueGrey,
      borderRadius: BorderRadius.circular(60),
      boxShadow: <BoxShadow>[
        BoxShadow(
          color: Colors.blue,
          blurRadius: 11,
          spreadRadius: 1,
        )
      ]
    )
  );


  late AnimationController controller = AnimationController(
    vsync: this,
    duration: Duration(seconds: 3),
  )..repeat(reverse: true);


  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }



  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        child: DecoratedBoxTransition(
          decoration: decorationTween.animate(controller), 
          child: Container(
            alignment: Alignment.center,
            height: 100,
            width: 100,
            child: FlutterLogo(),
          )
        )
      ),

    );
  }


}
