import 'package:e_learning_app/Theme/style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

Widget ButtonScreen(String text1, TextStyle style, Color color,
    {required double width,
    required double height,
    required Null Function() onTap}) {
  return InkWell(
    onTap: onTap,
    child: Container(
      width: width.sp,
      height: height.sp,
      decoration: BoxDecoration(
        color: color,
        borderRadius: borderradius50,
      ),
      child: Center(
        child: Text(
          textAlign: TextAlign.center,
          text1,
          style: style,
        ),
      ),
    ),
  );
}
