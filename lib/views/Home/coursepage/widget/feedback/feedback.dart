import 'package:e_learning_app/Theme/colors.dart';
import 'package:e_learning_app/Theme/fontstyle.dart';
import 'package:e_learning_app/Theme/style.dart';
import 'package:e_learning_app/views/component/button.dart';
import 'package:e_learning_app/views/Home/coursepage/widget/feedback/feedback_container.dart';
import 'package:e_learning_app/views/Home/coursepage/widget/feedback/feedback_student.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

//the main screen of feedback content all feedback and reviews
Widget feedbackscreen() {
  return Material(
    color: AppColor.lavender,
    child: SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Container(
        height: 550.h,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: const EdgeInsets.only(left: 30),
              child: Text(
                'Feedback',
                textAlign: TextAlign.start,
                style: AppFont.fontsize15,
              ),
            ),
            SizedBox(
              height: 40.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                feedbackcontainer(
                  Image.asset('assets/images/star.png'),
                  '4.7',
                  'Reviews',
                ),
                SizedBox(
                  width: 40.w,
                ),
                feedbackcontainer(
                    Image.asset('assets/images/User.png'), '753', 'Students'),
              ],
            ),
            SizedBox(
              height: 20.h,
            ),
            Container(
                width: 500.w,
                padding: const EdgeInsets.only(left: 30),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    feedbackstudent(
                        Image.asset('assets/images/Avatars.png'),
                        '@mannes_sammy',
                        '31 mins ago',
                        'Sed suspendisse elit sit trist gristi queget quis \n tristique pulectus!'),
                    feedbackstudent(
                        Image.asset('assets/images/avata.png'),
                        '@justin',
                        '01 hour ago',
                        'Great suspendisse elit sit trist gristi'),
                    feedbackstudent(
                        Image.asset(
                          'assets/images/Avatar.png',
                        ),
                        '@mouni',
                        '11 hour ago',
                        'Flit sit trist gristi do musch!'),
                  ],
                )),
             SizedBox(
              child: sizeboxs,
            ),
            Container(
              padding: const EdgeInsets.only(left: 30),
              child: ButtonScreen(
                onTap: () {},
                'Load more',
                AppFont.fontsize18w500,
                AppColor.bluecolor,
                width: 335.w,
                height: 60.h,
              ),
            ),
            SizedBox(
              height: 20.h,
            ),
          ],
        ),
      ),
    ),
  );
}
