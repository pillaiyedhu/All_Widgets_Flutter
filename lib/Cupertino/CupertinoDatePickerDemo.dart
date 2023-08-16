import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CupertinoDatePickerDemo extends StatefulWidget {
  CupertinoDatePickerDemoState createState() {
    return CupertinoDatePickerDemoState();
  }
}

class CupertinoDatePickerDemoState extends State<CupertinoDatePickerDemo> {
  DateTime dateTime = DateTime(3000, 2, 1, 10, 20);
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: CupertinoButton(
            child: Text("$dateTime"),
            onPressed: () {
              showCupertinoModalPopup(
                context: context,
                builder: (context) => CupertinoDatePicker(
                  initialDateTime: dateTime,
                  onDateTimeChanged: (newDate) {
                    setState(() {
                      dateTime = newDate;
                    });
                  },
                  mode: CupertinoDatePickerMode.date,
                ),
              );
            }),
      ),
    );
  }
}
