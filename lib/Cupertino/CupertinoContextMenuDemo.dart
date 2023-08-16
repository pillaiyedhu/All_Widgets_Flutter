import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CupertinoContextMenuDemo extends StatefulWidget {
  CupertinoContextMenuDemoState createState() {
    return CupertinoContextMenuDemoState();
  }
}

class CupertinoContextMenuDemoState extends State<CupertinoContextMenuDemo> {
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        child: SizedBox(
          height: 200,
          width: 200,
          child: CupertinoContextMenu(
            actions: <Widget>[
              CupertinoContextMenuAction(
                child: const Text("Action one"),
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
              CupertinoContextMenuAction(
                child: const Text("Action two"),
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
            ],
            child: Image.network(
                'https://imgs.search.brave.com/Dqhlmi6NJ90yFjcry7_uf-hW94cn1rv-sbdirmqkfR8/rs:fit:860:0:0/g:ce/aHR0cHM6Ly93d3cu/ZnJlZXBuZ2xvZ29z/LmNvbS91cGxvYWRz/L3lvdXR1YmUtcGxh/eS1sb2dvLXBuZy1p/bWFnZXMtNS5wbmc'
            ),
          ),
        ),
      ),
    );
  }
}
