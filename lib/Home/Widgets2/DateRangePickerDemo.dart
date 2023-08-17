import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DateRangePickerDemo extends StatefulWidget {
  DateRangePickerDemoState createState() {
    return DateRangePickerDemoState();
  }
}

class DateRangePickerDemoState extends State<DateRangePickerDemo> {
  DateTimeRange selectedRange =
      DateTimeRange(start: DateTime.now(), end: DateTime.now());
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Text("${selectedRange.duration.inDays}"),
            ElevatedButton(
                onPressed: () async {
                  DateTimeRange? newRange = await showDateRangePicker(
                      context: context,
                      firstDate: DateTime(1990),
                      lastDate: DateTime(3000));
                  if (newRange != null) {
                    setState(() {
                       selectedRange = newRange;
                    });
                   
                  }
                },
                child: Text('DateRangePicker'))
          ],
        ),
      ),
    );
  }
}
