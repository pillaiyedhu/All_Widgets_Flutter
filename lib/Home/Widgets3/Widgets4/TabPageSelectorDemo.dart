import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TabPageSelectorDemo extends StatefulWidget {
  TabPageSelectorDemoState createState() {
    return TabPageSelectorDemoState();
  }
}

class TabPageSelectorDemoState extends State<TabPageSelectorDemo>
    with SingleTickerProviderStateMixin {
  List<Widget> icons = [
    Icon(Icons.home),
    Icon(Icons.pages),
    Icon(Icons.person)
  ];

  int index = 0;

  late TabController controller;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    controller =
        TabController(length: icons.length, initialIndex: index, vsync: this);
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();

    controller.dispose();
  }

  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      alignment: Alignment.center,
      children: [
        TabBarView(
          controller: controller,
          children: icons,
        ),
        Positioned(
          bottom: 50,
          child: TabPageSelector(
            controller: controller,

          )
        ),
        Positioned(
          bottom: 50,
          right: 20,
          child:FloatingActionButton(
          onPressed: () {
            (index!=icons.length-1) ? index++ : index=0;
            controller.animateTo(index);
          },
          child: Icon(Icons.navigate_next),
        ))
        
      ],
    ));
  }
}
