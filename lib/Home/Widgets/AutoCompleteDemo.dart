import 'package:flutter/material.dart';

class AutoCompleteDemo extends StatefulWidget {
  @override
  AutoCompleteDemoState createState() {
    return AutoCompleteDemoState();
  }
}

class AutoCompleteDemoState extends State<AutoCompleteDemo> {
  static const List<String> fruits = ['apple', 'banana', 'grapes'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Flutter Widget Viewer"),
          centerTitle: true,
          backgroundColor: Colors.pink,
        ),
        body: Center(
          child: Autocomplete<String>(
            optionsBuilder: (TextEditingValue textEditingValue) {
              if (textEditingValue.text == "") {
                return Iterable<String>.empty();
              } else {
                return fruits.where((String item) {
                  return item.contains(textEditingValue.text.toLowerCase());
                });
              }
            },
          ),
        ));
  }
}
