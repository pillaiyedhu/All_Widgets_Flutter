import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SliverOpacityDemo extends StatefulWidget {
  SliverOpacityDemoState createState() {
    return SliverOpacityDemoState();
  }
}

class SliverOpacityDemoState extends State<SliverOpacityDemo> {
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: CustomScrollView(
          slivers: [
            SliverOpacity(
              opacity: 0.1,
              sliver: SliverList(
                delegate: SliverChildBuilderDelegate((context, index) => SizedBox(
                  child: Card(
                    color: Colors.red ,
                  ),
                  height: 100,
                ))
              ),
            ),
            SliverOpacity(
              opacity: 0.5,
              sliver: SliverList(
                delegate: SliverChildBuilderDelegate((context, index) => SizedBox(
                  child: Card(
                    color: Colors.red ,
                  ),
                  // color: Colors.red,
                  height: 100,
                ))
              ),
            ),
            SliverOpacity(

              opacity: 0.9,
              sliver: SliverList(
                delegate: SliverChildBuilderDelegate((context, index) => SizedBox(
                  // color: Colors.red,

                  height: 100,
                  child: Card(
                    color: Colors.red ,
                    
                  ),
                ))
              ),
            )
          ],
        ),
      ),

    );
  }
}
