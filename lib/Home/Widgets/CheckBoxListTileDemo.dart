import 'package:flutter/material.dart';

class CheckBoxListTileDemo extends StatefulWidget {
  @override
  CheckBoxListTileDemoState createState() {
    return CheckBoxListTileDemoState();
  }
}

class CheckBoxListTileDemoState extends State<CheckBoxListTileDemo> {
  bool onChange = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Flutter Widget Viewer"),
          centerTitle: true,
          backgroundColor: Colors.pink,
        ),
        body: Center(
          child: CheckboxListTile(
              value: onChange,
              onChanged: (bool? newState) {
                setState(() {
                  onChange = newState!;
                });
              },
              activeColor: Colors.deepOrange,
              title: Text("This is Checkbox"),
              subtitle: Text("you can see check box list tile"),
              controlAffinity: ListTileControlAffinity.leading,
              ),
        ));
  }
}

myBuilder() => Builder(builder: (BuildContext context) {
      return Text("This is Builder");
    });
