import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class IndexStackedDemo extends StatefulWidget {
  IndexStackedDemoState createState() {
    return IndexStackedDemoState();
  }
}

class IndexStackedDemoState extends State<IndexStackedDemo> {
  int index = 0;
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Row(
              children: [
                ElevatedButton(
                    onPressed: () {
                      setState(() {
                        index = 0;
                      });
                    },
                    child: Text('1')
                ),
                ElevatedButton(
                    onPressed: () {
                      setState(() {
                        index = 1;
                      });
                    },
                    child: Text('2')
                ),
                ElevatedButton(
                    onPressed: () {
                      setState(() {
                        index = 2;
                      });
                    },
                    child: Text('3')
                )
              ],
            ),

            IndexedStack(
              index: index,
              children:[
                Center(
                  child: Image(
                    image: AssetImage('assets/picture1.jpg')
                  )
                ),
                Center(
                  child: Image(
                    image: AssetImage('assets/picture2.jpg')
                  )
                ),
                Center(
                  child: Image.asset('assets/picture1.jpg')
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
