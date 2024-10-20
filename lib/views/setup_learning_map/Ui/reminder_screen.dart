import 'package:e_learning_app/Theme/assets_imge.dart';
import 'package:e_learning_app/Theme/colors.dart';
import 'package:e_learning_app/Theme/fontstyle.dart';
import 'package:e_learning_app/views/setup_learning_map/Ui/pickplan.dart';
import 'package:e_learning_app/views/setup_learning_map/widget/MonthDatePicker.dart';
import 'package:e_learning_app/views/setup_learning_map/widget/time_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LearningReminderScreen extends StatelessWidget {
  const LearningReminderScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: AppColor.lavender,
          leading: Image.asset(AssetsImages.cross),
        ),
        body: SafeArea(
            child: Container(
                padding: const EdgeInsets.only(right: 20, left: 10),
                width: double.infinity,
                height: 812.h,
                decoration: const BoxDecoration(
                  color: AppColor.lavender,
                ),
                child: Column(
              children: [
      
      
                  const SizedBox(
                    height: 80,
                  ),
                  Text(
                    'Set up learning reminders',
                    style: AppFont.fontsize25,
                  ),
                  Container(
                    width: 301.w,
                    height: 48.h,
                    child: Text(
                        'Tell us when you want to learn and we will send push\n notification to remind you, You can change these\n anytime in the settings menu',
                        style: AppFont.fontsize12w400),
                  ),
                  MonthDatePicker(),
                  const SizedBox(
                    height: 20,
                  ),
                  TimeListView(),
                  const SizedBox(
                    height: 20,
                  ),
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
                                builder: (context) => PickPlanScreen(),
                              ));
                        },
                        child: GestureDetector(
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
                ]))),
      ),
    );
  }
}


