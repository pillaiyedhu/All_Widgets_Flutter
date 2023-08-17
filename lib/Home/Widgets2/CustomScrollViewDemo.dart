import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomScrollViewDemo extends StatefulWidget {
  CustomScrollViewDemoState createState() {
    return CustomScrollViewDemoState();
  }
}

class CustomScrollViewDemoState extends State<CustomScrollViewDemo> {
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: CustomScrollView(
          slivers: [
            SliverGrid(
                delegate: SliverChildBuilderDelegate((context, index) {
                  return Container(
                    alignment: Alignment.center,
                    color: Colors.red[50 * (index%9)],
                    child: Text("The color $index"),
                    
                  );
                  
                },
                childCount:50
                ),
                
                gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                    maxCrossAxisExtent: 200,
                    childAspectRatio: 50,
                    mainAxisSpacing: 10,
                    crossAxisSpacing: 10,
                    mainAxisExtent: 45))
          ],
        ),
      ),
    );
  }
}
