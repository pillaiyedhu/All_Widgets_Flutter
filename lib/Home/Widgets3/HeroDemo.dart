import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HeroDemo extends StatefulWidget {
  HeroDemoState createState() {
    return HeroDemoState();
  }
}

class HeroDemoState extends State<HeroDemo> {
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          child: ListTile(
        title: Text("Click me"),
        trailing: Hero(tag: 'tag1', child: Icon(Icons.person)),
        onTap: () {
          Navigator.push(context, MaterialPageRoute(
            builder: (context) {
              return SecondPage();
            },
          ));
        },
      )),
    );
  }
}

class SecondPage extends StatelessWidget {
  Widget build(BuildContext context) {
    return Center(
      child: Hero(
        tag: 'tag1', 
        child: Container(
          color: Colors.red,
          height: 200,
          width: 200,
          alignment: Alignment.center,
        )
      ),
    );
  }
}
