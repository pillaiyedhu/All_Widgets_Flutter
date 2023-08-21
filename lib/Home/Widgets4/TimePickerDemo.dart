import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TimePickerDemo extends StatefulWidget {
  TimePickerDemoState createState() {
    return TimePickerDemoState();
  }
}

class TimePickerDemoState extends State<TimePickerDemo> {
  TimeOfDay time = TimeOfDay.now();
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text("${time.hour} - ${time.minute}"),
            SizedBox(
              height: 50,
            ),
            ElevatedButton(
              child: Text("Choose Time"),
              onPressed: () async {
                TimeOfDay? timeofday = await showTimePicker(
                    context: context,
                    initialTime: time,
                    initialEntryMode: TimePickerEntryMode.dial);

                if (timeofday != null) {
                  setState(() {
                    time = timeofday;
                  });
                }
              },
            )
          ],
        ),
      ),
    );
  }
}
