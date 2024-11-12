import 'package:e_learning_app/Theme/fontstyle.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

Widget stateoforder(
  Image img,
  String title,
  Color color,
) {
  return Row(
    children: [
      Container(
        width: 39.w,
        height: 39.h,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.r),
          color: color,
        ),
        child: img,
      ),
      SizedBox(
        width: 10.w,
      ),
      Text(
        title,
        style: AppFont.fontsize19w500,
      ),
    ],
  );
}
