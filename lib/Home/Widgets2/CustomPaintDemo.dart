import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomPaintDemo extends StatefulWidget {
  CustomPaintDemoState createState() {
    return CustomPaintDemoState();
  }
}

class CustomPaintDemoState extends State<CustomPaintDemo> {
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: CustomPaint(
          child: Text("This is PackMan"),
          painter: DemoPainter(),
        ),
      ),
    );
  }
}

class DemoPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    var center = size / 2;
    var paint = Paint()..color = Colors.blueAccent;
    canvas.drawArc(
        Rect.fromCenter(
            center: Offset(center.width, center.height),
            width: 200,
            height: 200),
        0,
        2 * 3.14*0.9,
        true,
        paint
    );
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}
