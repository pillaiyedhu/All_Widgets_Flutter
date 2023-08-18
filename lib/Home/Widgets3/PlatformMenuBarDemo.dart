import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PlatformMenuBarDemo extends StatefulWidget {
  PlatformMenuBarDemoState createState() {
    return PlatformMenuBarDemoState();
  }
}

class PlatformMenuBarDemoState extends State<PlatformMenuBarDemo> {
  Widget build(BuildContext context) {
    return PlatformMenuBar(
      menus:[
        PlatformMenu(
          label: "Platform Menu", 
          menus: [
            PlatformMenuItemGroup(
              members: [
                PlatformMenuItem(
                  label: "Report"
                ),

              ]
            )
          ]
        )
      ]
    );
  }
}
/////Only works with MAC OS