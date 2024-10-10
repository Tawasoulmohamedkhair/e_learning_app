import 'package:e_learning_app/Theme/fontstyle.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

//this widet for the details of student the totalbook and the goal and the total class of student
Widget detailsofstudent(Image img3, String text1, String text2, Color color) {
  return Container(
    padding: const EdgeInsets.only(top: 5, left: 5),
    width: 100.w,
    height: 127.h,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(14),
      color: color,
    ),
    child: Column(
      children: [
        img3,
        Text(
          text1,
          style: AppFont.fontsize14,
        ),
        Text(
          text2,
          style: AppFont.fontsize14,
        ),
      ],
    ),
  );
}
