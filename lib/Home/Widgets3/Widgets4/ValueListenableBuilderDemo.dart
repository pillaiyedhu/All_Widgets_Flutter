import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ValueListenableBuilderDemo extends StatefulWidget {
  ValueListenableBuilderDemoState createState() {
    return ValueListenableBuilderDemoState();
  }
}

final ValueNotifier notifier = ValueNotifier(0);

class ValueListenableBuilderDemoState
    extends State<ValueListenableBuilderDemo> {
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            IconButton(
                icon: Icon(Icons.add),
                onPressed: () {
                  notifier.value = notifier.value + 1;
                }),
            SizedBox(height: 30),
            ValueListenableBuilder(
              valueListenable: notifier,
              builder: (context, value, child) {
                return Text("$value");
              },
            )
          ],
        ),
      ),
    );
  }
}
