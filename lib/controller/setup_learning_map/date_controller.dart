import 'package:e_learning_app/model/setup_learning_map/date_model.dart';
import 'package:get/get.dart';

class DateController extends GetxController {
  var model = DateModel().obs;

  List<DateTime> currentMonthDays = [];

  // This function will generate all the days for a specific month
  void generateMonthDays(int year, int month) {
    currentMonthDays.clear();
    var firstDayOfMonth = DateTime(year, month, 1);
    var lastDayOfMonth = DateTime(year, month + 1, 0);

    for (int i = 0; i < lastDayOfMonth.day; i++) {
      currentMonthDays.add(firstDayOfMonth.add(Duration(days: i)));
    }
  }

  // Function to update the selected date
  void updateSelectedDate(String day, String month) {
    model.update((val) {
      val?.selectedDay = day;
      val?.selectedMonth = month;
    });
  }
}
