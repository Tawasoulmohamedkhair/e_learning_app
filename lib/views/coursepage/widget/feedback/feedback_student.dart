import 'package:e_learning_app/Theme/fontstyle.dart';
import 'package:e_learning_app/Theme/style.dart';
import 'package:flutter/material.dart';

//this widget for displaying the feedback of student
Widget feedbackstudent(Image img, String text1, String text2, String text3) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.start,
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      CircleAvatar(radius: 20, child: img),
      const SizedBox(
        width: 20,
      ),
      Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            text1,
            style: fontsize15,
          ),
          Text(
            text2,
            style: fontsize15,
          ),
          Text(
            text3,
            style: fontsize12w400,
          ),
        ],
      ),
       SizedBox(
        child: sizeboxs,
      )
    ],
  );
}
