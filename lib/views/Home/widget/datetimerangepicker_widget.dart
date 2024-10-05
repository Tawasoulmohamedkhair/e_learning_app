import 'package:e_learning_app/Theme/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_time_picker_spinner/flutter_time_picker_spinner.dart';

class TimePickerOfPlanScreen extends StatefulWidget {
  const TimePickerOfPlanScreen({super.key});

  @override
  State<TimePickerOfPlanScreen> createState() => _TimePickerOfPlanScreenState();
}

class _TimePickerOfPlanScreenState extends State<TimePickerOfPlanScreen> {
  DateTime _dateTime = DateTime.now();

  @override
  Widget build(BuildContext context) {
    return new Container(
      decoration: BoxDecoration(
          color: bluecolor, borderRadius: BorderRadius.circular(20)),
      width: 375.w,
      height: 273.h,
      padding: const EdgeInsets.only(top: 40, left: 10, right: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Column(
            children: [
              const Divider(
                color: Colors.white,
                height: 5,
                thickness: 2,
              ),
              hourMinute15Interval(),
            ],
          ),
          const Divider(
            color: Colors.white,
            height: 5,
            thickness: 2,
          ),
        ],
      ),
    );
  }

  Widget hourMinute12H() {
    return TimePickerSpinner(
      is24HourMode: true,
      onTimeChange: (time) {
        setState(() {
          _dateTime = time;
        });
      },
    );
  }

  Widget hourMinuteSecond() {
    return TimePickerSpinner(
      isShowSeconds: false,
      onTimeChange: (time) {
        setState(() {
          _dateTime = time;
        });
      },
    );
  }

  Widget hourMinute15Interval() {
    return TimePickerSpinner(
      highlightedTextStyle: const TextStyle(fontSize: 24, color: Colors.yellow),
      spacing: 5,
      minutesInterval: 1,
      onTimeChange: (time) {
        setState(() {
          _dateTime = time;
        });
      },
    );
  }

  Widget hourMinute12HCustomStyle() {
    return TimePickerSpinner(
      is24HourMode: false,
      normalTextStyle: const TextStyle(fontSize: 24, color: Colors.deepOrange),
      highlightedTextStyle: const TextStyle(fontSize: 24, color: Colors.yellow),
      spacing: 30,
      itemHeight: 80,
      isForce2Digits: true,
      minutesInterval: 2,
      onTimeChange: (time) {
        setState(() {
          _dateTime = time;
        });
      },
    );
  }
}





