import 'package:e_learning_app/Theme/fontstyle.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

// this widget for displaying the information of students
//and display the icon of likes and replies
// especialy the last section of the screen
Widget studentcomment(
    Image img, String text1, String text2, String text3, String text4) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.start,
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      img,
       SizedBox(
        width: 20.w,
      ),
      Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            text1,
            style: AppFont.fontsize15w400,
          ),
          Text(
            text2,
            style: AppFont.fontsize12w400,
          ),
          Text(
            text3,
            style: AppFont.fontsize12w400,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Row(
                children: [
                  InkWell(
                    onTap: () {},
                    child: const Text('Liked'),
                  ),
                  SizedBox(
                    width: 30.w,
                  ),
                  const Text('Reply'),
                ],
              ),
              SizedBox(
                width: 150.w,
              ),
              Image.asset('assets/images/like.png'),
              Text(text4),
            ],
          ),
        ],
      ),
    ],
  );
}
