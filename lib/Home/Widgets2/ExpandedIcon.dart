import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ExpandedIconDemo extends StatefulWidget {
  ExpandedIconDemoState createState() {
    return ExpandedIconDemoState();
  }
}

class ExpandedIconDemoState extends State<ExpandedIconDemo> {
  bool Expanded = false;
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("This is expanded icon"),
      ),
      body: Column(
        children: [
          Container(
            color: Colors.teal,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Expand This"),
                ExpandIcon(
                  isExpanded: Expanded,
                  onPressed: (bool isExpanded) {
                    setState(() {
                      Expanded = !isExpanded;
                    });
                  },
                )
              ],
            ),
          ),
          if(Expanded) Text("Expanded"),
          
        ],
      ),
      
    );
    
  }
}
