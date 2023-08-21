import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TextFormFieldDemo extends StatefulWidget {
  TextFormFieldDemoState createState() {
    return TextFormFieldDemoState();
  }
}

class TextFormFieldDemoState extends State<TextFormFieldDemo> {
  List<String> fields = ['hello', 'hello', 'hello'];
  Widget build(BuildContext context) {
    return Scaffold(
        body: Form(
            autovalidateMode: AutovalidateMode.always,
            onChanged: () {
              setState(() {
                Form.of(primaryFocus!.context!)!.save();
              });
            },
            child: Column(
              children: List.generate(3, (index) {
                return Column(
                  children: [
                    TextFormField(
                      onSaved: (String? value) {
                        if (value != null) {
                          fields[index] = value;
                        }
                      },
                    ),
                    SizedBox(height: 20),
                    Card(child: Text(fields[index]),)

                  ],
                );
              }),
            )));
  }
}
