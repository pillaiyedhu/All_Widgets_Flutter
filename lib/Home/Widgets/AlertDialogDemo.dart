import 'package:flutter/material.dart';

class AlertDialogDemo extends StatefulWidget {
  AlertDialogDemoState createState() {
    return AlertDialogDemoState();
  }
}

class AlertDialogDemoState extends State<AlertDialogDemo> {
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Flutter Widget Viewer"),
          centerTitle: true,
          backgroundColor: Colors.pink,
        ),
        body: Center(
          child: Container(
            child: ElevatedButton(
              child: Text("AlertDialog"),
              onPressed: () {
                showDialog(
                  context: context,
                  builder: (context) => AlertDialog(
                    actions: [
                      Text(
                          "This is Alert Dialog Box which makes use of showDialog inside onpress of elevated button and inside builder it makes use of alertdialog"),
                      TextButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          child: Text("Back"))
                    ],
                  ),
                );
              },
            ),
          ),
        ));
  }
}
