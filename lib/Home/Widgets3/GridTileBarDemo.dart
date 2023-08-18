import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class GridTileBarDemo extends StatefulWidget {
  GridTileBarDemoState createState() {
    return GridTileBarDemoState();
  }
}

class GridTileBarDemoState extends State<GridTileBarDemo> {
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SizedBox(
          height: 100,
          width: 200,
          child: Center(
            child:GridTile(
              child: Image.asset('assets/picture1.jpg'),
              header: GridTileBar(
                leading: Icon(Icons.favorite),
                title: Text("Leading"),
                trailing: Icon(Icons.menu),
              ),
              footer: GridTileBar(
                leading: Icon(Icons.shop),
              )
          ))
        ),

      ),
    );
  }
}