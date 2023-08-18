import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PopUpMenuButtonDemo extends StatefulWidget {
  PopUpMenuButtonDemoState createState() {
    return PopUpMenuButtonDemoState();
  }
}

class PopUpMenuButtonDemoState extends State<PopUpMenuButtonDemo> {
  String title = "pop up";
  String item1 = "item 1";
  String item2 = "item 2";
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ListTile(
          title: Text('$title'),
          trailing: PopupMenuButton(
            itemBuilder: (context) => [
              PopupMenuItem(
                child: Text("Item 1"),
                value: item1,
              ),
              PopupMenuItem(
                child: Text("Item 2"),
                value: item2,
              )
            ],
            onSelected: (value) {
              setState(() {
                title = value;
              });
            },
          ),
        ),
      ),
    );
  }
}
