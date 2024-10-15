import 'package:e_learning_app/Theme/colors.dart';
import 'package:e_learning_app/controller/setup_learning_map/date_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';

class MonthDatePicker extends StatelessWidget {
  final DateController dateController = Get.put(DateController());

  @override
  Widget build(BuildContext context) {
    // Assuming October 2024 for example
    dateController.generateMonthDays(2024, 10);

    return Material(
      child: Container(
        color: AppColor.lavender,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 40),
            SizedBox(height: 20),
            _buildMonthDateSelector(),
          ],
        ),
      ),
    );
  }

  Widget _buildMonthDateSelector() {
    return Container(
      height: 100,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: dateController.currentMonthDays.length,
        itemBuilder: (context, index) {
          DateTime day = dateController.currentMonthDays[index];
          String dayNumber =
              DateFormat('d').format(day); // Day of the month (1, 2, 3, ...)
          String dayName = DateFormat('E')
              .format(day); // Short name of the day (Mon, Tue, ...)
          String monthName =
              DateFormat('MMMM').format(day); // Full month name (October, ...)

          return GestureDetector(
            onTap: () {
              dateController.updateSelectedDate(dayNumber, monthName);
            },
            child: Obx(() => Container(
                  margin: EdgeInsets.symmetric(horizontal: 10),
                  padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                  decoration: BoxDecoration(
                    color: dateController.model.value.selectedDay == dayNumber
                        ? Colors.blue
                        : Colors.grey,
                    borderRadius: BorderRadius.circular(15),
                    boxShadow:
                        dateController.model.value.selectedDay == dayNumber
                            ? [BoxShadow(color: Colors.blue, blurRadius: 10)]
                            : [],
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        dayNumber,
                        style: TextStyle(
                          fontSize: 22,
                          color: Colors.white,
                        ),
                      ),
                      Text(
                        dayName,
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                )),
          );
        },
      ),
    );
  }
}
