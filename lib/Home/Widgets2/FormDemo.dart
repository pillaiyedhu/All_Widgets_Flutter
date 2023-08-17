import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FormDemo extends StatefulWidget {
  FormDemoState createState() {
    return FormDemoState();
  }
}

class FormDemoState extends State<FormDemo> {
  final key = GlobalKey<FormState>();
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          child: Form(
            key: key,
            child: Column(
            children: [
              TextFormField(validator: ((value) {
                if (value == null || value.isEmpty) {
                  return "Enter your name";
                } else {
                  return null;
                }
              })),
              TextFormField(
                validator: ((value) {
                  if (value == null || value.isEmpty) {
                    return "Enter your username";
                  } else {
                    return null;
                  }
                }),
              ),
              ElevatedButton(
                  onPressed: () {
                    if (key.currentState!.validate()) {
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(content: Text("Well Done"))
                      );
                    }
                  },
                  child: Text("Press"))
            ],
          ),
        ),
      ),
    ));
  }
}
