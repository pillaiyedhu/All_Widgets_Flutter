import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PhysicalShapeDemo extends StatefulWidget {
  PhysicalShapeDemoShape createState() {
    return PhysicalShapeDemoShape();
  }
}

class PhysicalShapeDemoShape extends State<PhysicalShapeDemo> {
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        height: 500,
        width: 500,
        child: PhysicalShape(

          elevation: 10,
          shadowColor: Colors.red, 
          clipper: ShapeBorderClipper(

            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(15)),
            )
          ),

          color: Colors.blue,
          child: Icon(Icons.flutter_dash,size: 100),
        ),
      ),
    );
  }
}
