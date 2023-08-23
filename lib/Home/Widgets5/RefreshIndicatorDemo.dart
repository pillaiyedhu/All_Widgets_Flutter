import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class RefreshIndicatorDemo extends StatefulWidget {
  RefreshIndicatorDemoState createState() {
    return RefreshIndicatorDemoState();
  }
}

List<String> list = ['list 1', 'list 2'];

class RefreshIndicatorDemoState extends State<RefreshIndicatorDemo> {
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: RefreshIndicator(
          onRefresh: () async {
            await Future.delayed(Duration(seconds: 2));
            int item = list.length + 1;
            list.add("list $item");
            setState(() {
              
            });
          },
          child: ListView.builder(
            itemCount: list.length,
            itemBuilder: (context, index) {
              return ListTile(
                title: Text(list[index]),
              );
            },
          ),
        ),
      ),
    );
  }
}
