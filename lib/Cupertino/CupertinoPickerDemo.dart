import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CupertinoPickerDemo extends StatefulWidget {
  CupertinoPickerDemoState createState() {
    return CupertinoPickerDemoState();
  }
}

class CupertinoPickerDemoState extends State<CupertinoPickerDemo> {
  var oldValue = 0;
  Widget build(BuildContext context) {
    return CupertinoApp(
      home: Container(
          child: CupertinoButton.filled(
              child: Text("Value : $oldValue"),
              onPressed: () {
                showCupertinoModalPopup(
                  context: context,
                  builder: (context) => CupertinoPicker(
                    backgroundColor: Colors.white,
                    itemExtent: 30,
                    children: [
                      Text('0'),
                      Text('1'),
                      Text('2'),
                    ],
                    onSelectedItemChanged: (value) {
                      setState(() {
                        oldValue = value;
                      });
                    },
                  ),
                );
              })),
    );
  }
}
