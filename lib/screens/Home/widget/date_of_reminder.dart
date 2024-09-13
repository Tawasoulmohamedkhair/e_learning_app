//import 'package:date_picker_timeline/date_picker_widget.dart';
import 'package:animated_horizontal_calendar/animated_horizontal_calendar.dart';
import 'package:e_learning_app/Theme/colors.dart';
import 'package:flutter/material.dart';

class DateOfReminder extends StatefulWidget {
  @override
  State<DateOfReminder> createState() => _DateOfReminderState();
}

class _DateOfReminderState extends State<DateOfReminder> {
  var selectedDate;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 10, right: 10),
      height: 150,
      child: AnimatedHorizontalCalendar(
          tableCalenderButtonColor: bluecolor,
          tableCalenderIcon: Icon(
            Icons.calendar_today,
            color: Colors.white,
          ),
          date: DateTime.now(),
          textColor: Colors.black45,
          backgroundColor: Colors.blue,
          tableCalenderThemeData: ThemeData.light().copyWith(
            primaryColor: Colors.blue,
            buttonTheme: ButtonThemeData(textTheme: ButtonTextTheme.primary),
            colorScheme: ColorScheme.light(primary: Colors.blue)
                .copyWith(secondary: Colors.blue),
          ),
          selectedColor: bluecolor,
          onDateSelected: (date) {
            selectedDate = date;
          }),
    );
  }
}
