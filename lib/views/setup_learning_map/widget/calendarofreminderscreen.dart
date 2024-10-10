import 'package:e_learning_app/Theme/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CalendarOfReminderScreen extends StatefulWidget {
  @override
  _CalendarOfReminderScreenState createState() =>
      _CalendarOfReminderScreenState();
}

class _CalendarOfReminderScreenState extends State<CalendarOfReminderScreen> {
  DateTime selectedDate = DateTime.now(); // TO tracking date

  int currentDateSelectedIndex = 0; //For Horizontal Date
  ScrollController scrollController =
      ScrollController(); //To Track Scroll of ListView

  List<String> listOfMonths = [
    "Jan",
    "Feb",
    "Mar",
    "Apr",
    "May",
    "Jun",
    "Jul",
    "Aug",
    "Sep",
    "Oct",
    "Nov",
    "Dec"
  ];

  List<String> listOfDays = ["Mon", "Tue", "Wed", "Thu", "Fri", "Sat", "Sun"];

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Container(
          height: 100.h,
          child: Container(
              child: ListView.separated(
            separatorBuilder: (BuildContext context, int index) {
              return const SizedBox(width: 10);
            },
            itemCount: 365,
            controller: scrollController,
            scrollDirection: Axis.horizontal,
            itemBuilder: (BuildContext context, int index) {
              return InkWell(
                onTap: () {
                  setState(() {
                    currentDateSelectedIndex = index;
                    selectedDate = DateTime.now().add(Duration(days: index));
                  });
                },
                child: Container(
                  height: 73.h,
                  width: 63.w,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16.r),
                      boxShadow: [
                        const BoxShadow(offset: Offset(3, 3), blurRadius: 5)
                      ],
                      color: currentDateSelectedIndex == index % 2
                          ? AppColor.sonicSilver
                          : AppColor.bluecolor),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        DateTime.now()
                            .add(Duration(days: index))
                            .day
                            .toString(),
                        style: TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.w700,
                            color: currentDateSelectedIndex == index
                                ? Colors.white
                                : Colors.white),
                      ),
                      SizedBox(
                        height: 5.h,
                      ),
                      Text(
                        listOfDays[DateTime.now()
                                    .add(Duration(days: index))
                                    .weekday -
                                1]
                            .toString(),
                        style: TextStyle(
                            fontSize: 16,
                            color: currentDateSelectedIndex == index
                                ? Colors.white
                                : Colors.white),
                      ),
                    ],
                  ),
                ),
              );
            },
          ))),
    ]);
  }
}
