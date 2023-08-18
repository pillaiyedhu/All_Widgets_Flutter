import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class NotificationListenerDemo extends StatefulWidget {
  NotificationListenerDemoState createState() {
    return NotificationListenerDemoState();
  }
}

class NotificationListenerDemoState extends State<NotificationListenerDemo> {
  String message = "hello";
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Container(
              alignment: Alignment.center,
              height: 50,
              width: double.infinity,
              color: Colors.amberAccent,
              child: Text("$message"),
            ),
            Expanded(
                child: NotificationListener<ScrollNotification>(
              onNotification: (scrollNotification) {
                if (scrollNotification is ScrollStartNotification) {
                  setState(() {
                    message = "Scroll Started";
                  });
                } else if (scrollNotification is ScrollUpdateNotification) {
                  setState(() {
                    message = "Scroll Updated";
                  });
                } else if (scrollNotification is ScrollEndNotification) {
                  setState(() {
                    message = "Scroll ended";
                  });
                }
                return true;
              },
              child: ListView.builder(
                itemCount: 50,
                itemBuilder: (context, index) {
                  return ListTile(
                    title: Text("List $index"),
                  );
                },
              ),
            ))
          ],
        ),
      ),
    );
  }
}
