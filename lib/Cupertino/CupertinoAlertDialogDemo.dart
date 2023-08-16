import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CupertinoAlertDialogDemo extends StatefulWidget {
  CupertinoAlertDialogDemoState createState() {
    return CupertinoAlertDialogDemoState();
  }
}

class CupertinoAlertDialogDemoState extends State<CupertinoAlertDialogDemo> {
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
        child: Center(
      child: CupertinoButton(
          child: Text('Alert Dialog'),
          onPressed: () {
            showCupertinoDialog(
              context: context,
              builder: (context) => CupertinoAlertDialog(
                title: Text('Alert'),
                content: Text('This is a alert box'),
                actions: [
                  CupertinoDialogAction(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: Text('No'),
                    isDestructiveAction: true,
                  ),
                  CupertinoDialogAction(
                    child: Text('Yes'),
                    isDestructiveAction: false,
                  ),
                ],
              ),
            );
          }),
    ));
  }
}
