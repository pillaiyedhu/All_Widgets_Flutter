import 'package:flutter/material.dart';

class CardDemo extends StatefulWidget {
  @override
  CardDemoState createState() {
    return CardDemoState();
  }
}

class CardDemoState extends State<CardDemo> {
  bool selected = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Flutter Widget Viewer"),
          centerTitle: true,
          backgroundColor: Colors.pink,
        ),
        body: Center(
          child:Card(
            color: Colors.cyan,
            elevation: 5,
            margin: EdgeInsets.all(20),
            child: Column(
              children: [
                Text("This is Card"),
                ElevatedButton(
                  onPressed: (){}, 
                  child: Text("Press Me")
                )
              ],
            ),
          )
        ),
    );
  }
}
