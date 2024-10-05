import 'package:e_learning_app/Theme/colors.dart';
import 'package:e_learning_app/Theme/fontstyle.dart';
import 'package:e_learning_app/views/Home/widget/text_add_offer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

Widget containerListofpickplantutor(Image img, String text1, String text2,
    String text3,
    String text4, String text5) {
  return Container(
    width: 200.w,
    height: 302.h,
    decoration: BoxDecoration(
      border: Border.all(width: 1.w, color: Colors.white),
      color: bluecolor,
      borderRadius: BorderRadius.circular(20.r),
    ),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          height: 28,
          child: RotationTransition(
            turns: const AlwaysStoppedAnimation(25),
            child: Text(text1, style: fontsize15w500),
          ),
        ),
        SizedBox(
          height: 10.h,
        ),
        List_add_offer(img, text2),
        SizedBox(
          height: 10.h,
        ),
        List_add_offer(img, text2),
        SizedBox(
          height: 10.h,
        ),
        List_add_offer(img, text2),
        SizedBox(
          height: 10.h,
        ),
        Text(
          text3,
          style: GoogleFonts.dmSans(
              color: Colors.white,
              fontSize: 20.sp,
              fontWeight: FontWeight.w500),
        ),
        SizedBox(
          height: 10.h,
        ),
        Text(text4, style: fontsize14),
        SizedBox(
          height: 10.h,
        ),
        Text(text5, style: fontsize12),
      ],
    ),
  );
}
