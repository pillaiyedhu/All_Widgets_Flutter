import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class OffStageDemo extends StatefulWidget {
  OffStageDemoState createState() {
    return OffStageDemoState();
  }
}

class OffStageDemoState extends State<OffStageDemo> {
  bool ofStage = true;
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Offstage(
              child: Icon(Icons.flutter_dash),
              offstage: ofStage,
            ),
            ElevatedButton(
              child: Text("OffSet"),
              onPressed: () {
                setState(() {
                  ofStage = !ofStage;
                });
              },
            )
          ],
        ),
      ),
    );
  }
}
