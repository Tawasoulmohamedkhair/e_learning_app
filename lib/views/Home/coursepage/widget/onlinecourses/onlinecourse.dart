import 'package:e_learning_app/Theme/colors.dart';
import 'package:e_learning_app/Theme/fontstyle.dart';
import 'package:flutter/material.dart';

//the second section of onlinecoursescreen about the courses
Widget onlinecourse(
  Image img,
  String text1,
  String text2,
  String text3,
  Widget circlecontainer,
) {
  return Container(
    padding: EdgeInsets.only(left: 20, top: 20, right: 12),
    width: 350,
    height: 86,
    decoration: BoxDecoration(
        color: AppColor.bluecolor, borderRadius: BorderRadius.circular(28)),
    child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(child: img),
          const SizedBox(
            width: 15,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                text1,
                style: AppFont.fontsize14,
              ),
              Text(
                text2,
                style: AppFont.fontsize11,
              ),
            ],
          ),
          const SizedBox(
            width: 25,
          ),
          Row(
            children: [
              Text(
                text3,
                style: AppFont.fontsize10,
              ),
              const SizedBox(
                width: 20,
              ),
              circlecontainer
            ],
          ),
        ]),
  );
}
