import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CupertinoActionSheetActionDemo extends StatefulWidget {
  CupertinoActionSheetActionDemoState createState() {
    return CupertinoActionSheetActionDemoState();
  }
}

class CupertinoActionSheetActionDemoState
    extends State<CupertinoActionSheetActionDemo> {
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
        child: Center(
      child: CupertinoButton(
        child: Text("CupertinoActionSheetActionDemo"),
        onPressed: () {
          showCupertinoModalPopup(
              context: context,
              builder: (context) => CupertinoActionSheet(
                    actions: [
                      CupertinoActionSheetAction(
                        child: Text("Go BAck"),
                        onPressed: () {
                          Navigator.pop(context);
                        },
                      ),
                      CupertinoActionSheetAction(
                        onPressed: (){}, 
                        child: Text("Go Ahead")
                      )
                    ],
                  ));
        },
      ),
    ));
  }
}
