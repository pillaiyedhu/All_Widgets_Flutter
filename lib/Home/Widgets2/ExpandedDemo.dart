import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ExpandedDemo extends StatefulWidget {
  ExpandedDemoState createState() {
    return ExpandedDemoState();
  }
}

class ExpandedDemoState extends State<ExpandedDemo> {
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Column(
        children:<Widget> [
          Expanded(
            flex: 3,
            child: SizedBox(
              child: ColoredBox(color: Colors.cyan),
            )  
          ),
          Expanded(
            flex: 3,
            child: SizedBox(
              child: ColoredBox(color: Colors.blue),
            )  
          ),
          Expanded(
            flex: 3,
            child: SizedBox(
              child: ColoredBox(color: Colors.purple),
            )  
          ),
          
        ],
      ),

    );
  }
}
