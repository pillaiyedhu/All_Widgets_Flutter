import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DatePickerDemo extends StatefulWidget {
  DatePickerDemoState createState() {
    return DatePickerDemoState();
  }
}

class DatePickerDemoState extends State<DatePickerDemo> {
  DateTime dt = DateTime.now();
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Text("${dt.year} - ${dt.month} - ${dt.day}"),
            ElevatedButton(
                onPressed: () async {
                  final DateTime? dateT = await showDatePicker(
                      context: context,
                      initialDate: dt,
                      firstDate: DateTime(1990),
                      lastDate: DateTime(3000));

                  if (dateT != null) {
                    setState(() {
                      dt = dateT;
                    });  
                  }
                },
                child: Text("DateTimePicker"))
          ],
        ),
      ),
    );
  }
}
