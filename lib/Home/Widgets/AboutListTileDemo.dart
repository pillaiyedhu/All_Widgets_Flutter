import 'package:flutter/material.dart';

class AboutListTileDemo extends StatefulWidget {
  AboutListTileState createState() {
    return AboutListTileState();
  }
}

class AboutListTileState extends State<AboutListTileDemo> {
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Flutter Widget Viewer"),
          centerTitle: true,
          backgroundColor: Colors.pink,
        ),
        body: Center(
          child: AboutListTile(
            applicationIcon: FlutterLogo(),
            applicationName: 'Flutter Demo',
            applicationVersion: '0.0.1',
            aboutBoxChildren: [
              Text("This is the About List title which makes use of AboutListTitle widget")
            ],
          ),
        ),
        );
  }
}
