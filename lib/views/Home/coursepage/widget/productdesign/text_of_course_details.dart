import 'package:e_learning_app/Theme/fontstyle.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

//this widget for the second section of productdesign include the price and about the course
Widget textofcoursedetails(
    String title1,
    TextStyle style,
    String title2,
    Color color,
    String title3,
    TextStyle style1,
    String title4,
    TextStyle style2,
    String title5,
    Color color2) {
  return Container(
    padding: EdgeInsets.only(left: 20, right: 10),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              title1,
              style: style,
            ),
            Text(
              title2,
              style: AppFont.fontsize16,
            )
          ],
        ),
        SizedBox(
          height: 20.h,
        ),
        Text(
          title3,
          style: style1,
        ),
        SizedBox(
          height: 20.h,
        ),
        Text(
          title4,
          style: style2,
        ),
        SizedBox(
          height: 20.h,
        ),
        Text(
          title5,
          style: AppFont.fontsize12w400,
        ),
      ],
    ),
  );
}
