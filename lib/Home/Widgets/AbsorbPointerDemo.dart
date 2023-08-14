import 'package:flutter/material.dart';

class AbsorbPointerDemo extends StatefulWidget {
  AbsorbPointerState createState() {
    return AbsorbPointerState();
  }
}

class AbsorbPointerState extends State<AbsorbPointerDemo> {
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Flutter Widget Viewer"),
        centerTitle: true,
        backgroundColor: Colors.pink,
      ),
      body: Center(

        child: Stack(
          children: [
            Container(
              height: 200,
              width: 100,
              //child:AbsorbPointer(
                child:ElevatedButton(
                  style: ElevatedButton.styleFrom(backgroundColor: Colors.blue),
                  onPressed: () {},
                  child: null,
              )
            ),
            Container(
              height: 100,
              width: 200,
              child:AbsorbPointer(
                child:ElevatedButton(
                  style: ElevatedButton.styleFrom(backgroundColor: Colors.black),
                  onPressed: () {},
                  child: null,
                )
              )
            )
            
          ],
          
          ),
        ),
      
    );
  }
}
