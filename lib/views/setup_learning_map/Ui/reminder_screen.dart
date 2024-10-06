import 'package:e_learning_app/Theme/colors.dart';
import 'package:e_learning_app/Theme/fontstyle.dart';
import 'package:e_learning_app/views/setup_learning_map/Ui/screen_of_pick_plan.dart';
import 'package:e_learning_app/views/setup_learning_map/widget/calendarofreminderscreen.dart';
import 'package:e_learning_app/views/setup_learning_map/widget/datetimerangepicker_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class Learning_Reminder_Screen extends StatelessWidget {
  const Learning_Reminder_Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: AppColor.lavender,
          leading: Image.asset('assets/images/cross.png'),
        ),
        body: SafeArea(
          child: Container(
            padding: const EdgeInsets.only(right: 20, left: 10),
            width: double.infinity,
            height: 812.h,
            decoration: const BoxDecoration(
              color: AppColor.lavender,
            ),
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    height: 39.h,
                    child: Text(
                      'Set up learning reminders',
                      style: AppFont.fontsize25,
                    ),
                  ),
                  Container(
                    width: 301.w,
                    height: 48.h,
                    child: Text(
                        'Tell us when you want to learn and we will send push\n notification to remind you, You can change these\n anytime in the settings menu',
                        style: AppFont.fontsize15),
                  ),
                  
                  CalendarOfReminderScreen(),
                  const TimePickerOfPlanScreen(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 5),
                        child: TextButton(
                          onPressed: () {},
                          child: Text('Skip', style: AppFont.fontsize15),
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                builder: (context) => ScreenOfPickPlan(),
                              ));
                        },
                        child: GestureDetector(
                          onTap: () => Get.to(() => ScreenOfPickPlan()),
                          child: Container(
                            width: 110.w,
                            height: 110.h,
                            decoration: const BoxDecoration(
                                color: AppColor.bluecolor,
                                shape: BoxShape.circle),
                            child: Center(
                                child: Text('Continue',
                                    style: AppFont.fontsize18w500)),
                          ),
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
          ),
        ));
  }
}
