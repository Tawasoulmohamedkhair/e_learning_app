import 'package:e_learning_app/Theme/fontstyle.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

Widget List_add_offer(Image img, String text) {
  return Container(
    width: 150.w,
    height: 18.h,
    child: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Expanded(child: img),
        Text(text, style: AppFont.fontsizew400),
      ],
    ),
  );
}
