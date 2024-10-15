import 'package:e_learning_app/model/timemodel.dart';
import 'package:get/get.dart';

class TimeController extends GetxController {
  // List of time slots (observable)
  var timeSlots = <TimeSlot>[].obs;

  @override
  void onInit() {
    super.onInit();
    generateTimeSlots(); // Generate the time slots when the controller initializes
  }

  // Function to generate all the hours and minutes for both AM and PM
  void generateTimeSlots() {
    List<TimeSlot> generatedSlots = [];

    // Generate AM times
    for (int hour = 1; hour <= 12; hour++) {
      for (int minute = 0; minute < 60; minute += 15) {
        generatedSlots.add(TimeSlot(hour: hour, minute: minute, period: "AM"));
      }
    }

    // Generate PM times
    for (int hour = 1; hour <= 12; hour++) {
      for (int minute = 0; minute < 60; minute += 15) {
        generatedSlots.add(TimeSlot(hour: hour, minute: minute, period: "PM"));
      }
    }

    // Update the observable list
    timeSlots.assignAll(generatedSlots);
  }
}
