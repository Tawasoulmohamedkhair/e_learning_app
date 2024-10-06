import 'package:e_learning_app/Theme/fontstyle.dart';
import 'package:e_learning_app/Theme/style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

//this widget for displaying the feedback of student
Widget feedbackstudent(Image img, String text1, String text2, String text3) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.start,
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      CircleAvatar(radius: 20.r, child: img),
      SizedBox(
        width: 20.w,
      ),
      Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            text1,
            style: AppFont.fontsize15,
          ),
          Text(
            text2,
            style: AppFont.fontsize15,
          ),
          Text(
            text3,
            style: AppFont.fontsize12w400,
          ),
        ],
      ),
       SizedBox(
        child: sizeboxs,
      )
    ],
  );
}
