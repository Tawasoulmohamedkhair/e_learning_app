import 'package:e_learning_app/Theme/colors.dart';
import 'package:e_learning_app/Theme/fontstyle.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

Widget coursedetails(
  final IconData icon1, {
  required String text1,
  required String text2,
  required String text3,
  required String text4,
  required Color color,
  img,
}) {
  return Container(
    
    padding: const EdgeInsets.only(left: 20, right: 20),
    child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
      Text(
        text1,
            style: AppFont.fontsize24,
      ),
      SizedBox(
            width: 60.w,
      ),
      Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            text2,
                style: AppFont.fontsize12w500,
          ),
          SizedBox(
                height: 20.h,
          ),
          Row(children: [
            Text(
              text3,
                  style: AppFont.fontsize15,
            ),
                const SizedBox(
              width: 20,
            ),
            Text(
              text4,
                  style: AppFont.fontsize15,
            ),
            SizedBox(
                  width: 40.w,
            ),
            if (text1 == '01')
              Container(
                      width: 15.w,
                      height: 15.h,
                  decoration:
                      const BoxDecoration(
                          color: AppColor.bluecolor, shape: BoxShape.circle),
                  child: (text1 == '01') ? Icon(size: 10, icon1) : null)
          ]),
        ],
      ),
      SizedBox(
            width: 50.w,
      ),
          Container(
            width: 44.w,
            height: 44.h,
            decoration: BoxDecoration(color: color, shape: BoxShape.circle),
            child: img,
          ),
    ]),
  );
}
