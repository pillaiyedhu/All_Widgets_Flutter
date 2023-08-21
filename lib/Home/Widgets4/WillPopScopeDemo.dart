import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class WillPopScopeDemo extends StatefulWidget {
  WillPopScopeDemoState createState() {
    return WillPopScopeDemoState();
  }
}

class WillPopScopeDemoState extends State<WillPopScopeDemo> {
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
            onPressed: () {
              setState(() {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => SecondPageITs(),
                ));
              });
            },
            child: Text("NextPage")),
      ),
    );
  }
}

class SecondPageITs extends StatelessWidget {
  Widget build(BuildContext context) {
    return WillPopScope(
        onWillPop: () async {
          return false;
        },
        child: Scaffold(
          appBar: AppBar(
            title: Text("WillPopScope"),
            actions: [
              IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: Icon(Icons.arrow_back))
            ],
          ),
          body: Container(
            color: Colors.cyan,
          ),
        ));
  }
}
