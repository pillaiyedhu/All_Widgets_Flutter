import 'package:flutter/material.dart';

class AboutDialogDemo extends StatefulWidget {
  @override
  AboutDialogDemoState createState() {
    return AboutDialogDemoState();
  }
}

class AboutDialogDemoState extends State<AboutDialogDemo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Flutter Widget Viewer"),
        centerTitle: true,
        backgroundColor: Colors.pink,
      ),
      body: Container(
        color: const Color.fromARGB(255, 231, 181, 177),
        child: Center(
          child: ElevatedButton(
              style: ElevatedButton.styleFrom(backgroundColor: Colors.white),
              onPressed: () {
                showAboutDialog(
                  context: context,
                  applicationIcon: FlutterLogo(),
                  applicationName: "My Dialog Box",
                  children: [
                    Text("This is a About Dialog which makes use of ShowAboutDialog widget")
                  ]
                );
              },
              child: const Text(
                "Show AboutDialog",
                style: TextStyle(color: Colors.black),
              )),
        ),
      ),
    );
  }
}
