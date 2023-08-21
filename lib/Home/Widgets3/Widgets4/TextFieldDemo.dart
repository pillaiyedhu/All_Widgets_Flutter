import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TextFieldDemo extends StatefulWidget {
  TextFieldDemoState createState() {
    return TextFieldDemoState();
  }
}

class TextFieldDemoState extends State<TextFieldDemo> {
  late TextEditingController controller;
  var text = '';

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    controller = TextEditingController();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    controller.dispose();
  }

  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            TextField(
              controller: controller,
              onSubmitted: (value) {
                setState(() {
                  text = controller.text;
                }); 
              },
            ),
            SizedBox(height: 20,),
            Text('$text'),
          ],
        ),
      ),
    );
  }
}
