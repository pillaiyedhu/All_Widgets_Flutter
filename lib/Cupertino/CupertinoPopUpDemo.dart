import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CupertinoPopUpDemo extends StatefulWidget {
  CupertinoPopUpDemoState createState() {
    return CupertinoPopUpDemoState();
  }
}

class CupertinoPopUpDemoState extends State<CupertinoPopUpDemo> {
  Widget build(BuildContext context) {
    return Center(
      child: CupertinoButton.filled(
          child: Text("Pop UP"),
          onPressed: () {
            showCupertinoModalPopup(
              context: context,
              builder: (context) {
                return CupertinoPopupSurface(
                  child: SizedBox(
                    height: 100,
                    child: Center(
                      child: CupertinoButton(
                          child: Text('Close'),
                          onPressed: () {
                            Navigator.pop(context);
                          }),
                    ),
                  ),
                );
              },
            );
          }),
    );
  }
}
