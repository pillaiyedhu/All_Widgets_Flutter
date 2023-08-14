import 'package:flutter/material.dart';

class BottomNavigationDemo extends StatefulWidget {
  @override
  BottomNavigationDemoState createState() {
    return BottomNavigationDemoState();
  }
}

class BottomNavigationDemoState extends State<BottomNavigationDemo> {
  List<Widget> body = const [
    Icon(Icons.home),
    Icon(Icons.menu),
    Icon(Icons.person)
  ];
  int iterator = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Flutter Widget Viewer"),
        centerTitle: true,
        backgroundColor: Colors.pink,
      ),
      body: Center(
        child: Container(
          child: body[iterator],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: iterator,
        onTap: (int newIterator) {
          setState(() {
            iterator = newIterator;
          });
        },
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.menu), label: 'Menu'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Person')
        ],
      ),
    );
  }
}
