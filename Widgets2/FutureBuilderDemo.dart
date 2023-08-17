import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FutureBuilderDemo extends StatefulWidget {
  FutureBuilderDemoState createState() {
    return FutureBuilderDemoState();
  }
}

class FutureBuilderDemoState extends State<FutureBuilderDemo> {
  Future<dynamic> getData() async {
    await Future.delayed(Duration(seconds: 2));
    return 'Supeeeeer';
  }

  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          child: FutureBuilder(
            future: getData(),
            builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return CircularProgressIndicator();
            }
            if (snapshot.hasError) {
              return Text(snapshot.error.toString());
            } else {
              return Column(
                children: [
                  Text(snapshot.data.toString()),
                  ElevatedButton(
                    onPressed: (){
                      setState(() {
                        
                      });
                    }, 
                    child: Text("Refresh")
                  )
                ],
              );
            }
          }),
        ),
      ),
    );
  }
}
