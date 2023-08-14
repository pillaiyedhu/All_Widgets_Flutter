import 'package:flutter/material.dart';

class BottomSheetDemo extends StatefulWidget {
  @override
  BottomSheetDemoState createState() {
    return BottomSheetDemoState();
  }
}

class BottomSheetDemoState extends State<BottomSheetDemo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Flutter Widget Viewer"),
        centerTitle: true,
        backgroundColor: Colors.pink,
      ),
      body: Center(
        child: ElevatedButton(
          child: Text("Click me"),
          onPressed: () {
            showModalBottomSheet(
              context: context,
              builder: (BuildContext context) {
                return SizedBox(
                  height: 400,
                  child: Center(
                    child: ElevatedButton(
                      child: Text("Close"),
                      onPressed: () {
                        Navigator.pop(context);
                      },
                    ),
                  ),
                );
              },
            );
          },
        ),
      ),
    );
  }
}
