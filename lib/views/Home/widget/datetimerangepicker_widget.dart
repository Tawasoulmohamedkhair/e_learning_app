import 'package:e_learning_app/Theme/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_time_picker_spinner/flutter_time_picker_spinner.dart';

class TimePicker extends StatefulWidget {
  const TimePicker({super.key});

  @override
  State<TimePicker> createState() => _TimePickerState();
}

class _TimePickerState extends State<TimePicker> {
  @override
  Widget build(BuildContext context) {
    return Container(
        width: 327,
        height: 273,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: bluecolor,
        ),
        child: Column(
          children: [
            TimePickerSpinner(
              is24HourMode: false,
              normalTextStyle:
                  const TextStyle(fontSize: 24, color: Colors.white),
              itemWidth: 40,
              highlightedTextStyle:
                  const TextStyle(fontSize: 24, color: Colors.white),
              spacing: 50,
              itemHeight: 80,
              isForce2Digits: true,
              onTimeChange: (time) {
                setState(() {});
              },
            ),
          ],
        ));
  }
}
