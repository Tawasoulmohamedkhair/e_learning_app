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
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    var accessscolor;
    return Container(
      height: 150,
      padding: EdgeInsets.all(10),
      child: Expanded(
        flex: 2,
        child: AnimatedHorizontalCalendar(
          
            tableCalenderIcon: Icon(
              Icons.calendar_today,
              color: Colors.white,
            ),
            date: DateTime.now(),
            textColor: Colors.black45,
            backgroundColor: Colors.white,
            tableCalenderThemeData: ThemeData.light().copyWith(
              primaryColor: Colors.green,
              buttonTheme: ButtonThemeData(textTheme: ButtonTextTheme.primary),
              colorScheme: ColorScheme.light(primary: Colors.green)
                  .copyWith(secondary: Colors.red),
            ),
            selectedColor: Colors.redAccent,
            onDateSelected: (date) {
              selectedDate = date;
            }),
      ),
    );
  }
}
