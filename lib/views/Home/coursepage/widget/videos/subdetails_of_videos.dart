import 'package:e_learning_app/Theme/fontstyle.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

//this widgets for displaying the information of videos
//likethe duration of videos and the numberof lessons  etc..
Widget subdetailes(
  Image img,
  String title1,
) {
  return Row(
    children: [
      img,
      SizedBox(
        width: 10.w,
      ),
      Text(title1, style: AppFont.fontsize12w400),
    ],
  );
}
