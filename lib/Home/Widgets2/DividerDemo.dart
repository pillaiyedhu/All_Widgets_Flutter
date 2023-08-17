import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DividerDemo extends StatefulWidget {
  DividerDemoState createState() {
    return DividerDemoState();
  }
}

class DividerDemoState extends State<DividerDemo> {
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Container(
              color: Colors.teal,
              height: 100,
              width: double.infinity,
            ),

            const Divider(
              color: Colors.red,
              endIndent: 5,
              indent: 5,
              thickness: 12,
            ),


            Container(
              height: 100,
              width: double.infinity,
              color: Colors.teal,
            )

          ],
        ),
      ),

    );
  }
}
