import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class GridViewDemo extends StatefulWidget {
  GridViewDemoState createState() {
    return GridViewDemoState();
  }
}

class GridViewDemoState extends State<GridViewDemo> {
  Widget build(BuildContext context) {
    return Scaffold(
        body: GridView.builder(
          itemCount: 20,
            gridDelegate:
                SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
            itemBuilder: (context, index) {
              return GridTile(
                child: Image.asset('assets/picture1.jpg'),
                header: Text("Header"),
                footer: Text("Footer"), 
              );
            }));
  }
}
