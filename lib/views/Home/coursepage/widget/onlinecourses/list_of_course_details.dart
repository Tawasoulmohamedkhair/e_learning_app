import 'package:e_learning_app/Theme/fontstyle.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

//this is the third section  for courses detailes in the screen of OnlineCourseDetails
Widget listofcoursedetails(Image img4, String title, String text) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.start,
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      img4,
      SizedBox(
        width: 20.w,
      ),
      Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: AppFont.fontsize19w500,
          ),
          Text(
            text,
            style: AppFont.fontw400,
          ),
        ],
      ),
    ],
  );
}
