import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class VisibilityDemo extends StatefulWidget {
  VisibilityDemoState createState() {
    return VisibilityDemoState();
  }
}

class VisibilityDemoState extends State<VisibilityDemo> {
  bool show = false;
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            ElevatedButton(
                onPressed: () {
                  setState(() {
                    show = !show;
                  });
                },
                child: Text("Show/Hide")
            ),
            Visibility(
              visible: show,
              child: Image.asset("assets/picture1.jpg")
            )
          ],
        ),
      ),
    );
  }
}
