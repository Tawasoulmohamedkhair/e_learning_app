import 'package:e_learning_app/Theme/colors.dart';
import 'package:e_learning_app/controller/setup_learning_map/time_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class TimeListView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final TimeController timeController =
        Get.put(TimeController()); // Inject controller

    return Material(
      child: Obx(() {
        // Observe the timeSlots list from the controller
        return Container(
          color: AppColor.lavender,
          child: Center(
            child: Container(
              decoration: BoxDecoration(
                color: AppColor.bluecolor,
                borderRadius: BorderRadius.all(Radius.circular(16.0.r)),
              ),
              width: 327,
              height: 273,
              child: Center(
                child: ListView.builder(
                  shrinkWrap: true,
                  itemCount: timeController.timeSlots.length,
                  itemBuilder: (context, index) {
                    final timeSlot = timeController.timeSlots[index];
                    return Center(
                      child: ListTile(
                        title: Center(child: Text(timeSlot.formattedTime)),
                      ),
                    );
                  },
                ),
              ),
            ),
          ),
        );
      }),
    );
  }
}
