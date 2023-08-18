import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class GridTileDemo extends StatefulWidget {
  GridTileDemoState createState() {
    return GridTileDemoState();
  }
}

class GridTileDemoState extends State<GridTileDemo> {
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SizedBox(
          height: 200,
          width: 200,
          child: Center(
            child:GridTile(
              child: Image.asset('assets/picture1.jpg'),
              header: Text("Header"),
              footer: Text("Footer"),
          ))
        ),

      ),
    );
  }
}
