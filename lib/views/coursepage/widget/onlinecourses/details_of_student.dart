import 'package:e_learning_app/Theme/fontstyle.dart';
import 'package:flutter/material.dart';

//this widet for the details of student the totalbook and the goal and the total class of student
Widget detailsofstudent(Image img3, String text1, String text2, Color color) {
  return Container(
    padding: EdgeInsets.only(top: 5, left: 5),
    width: 100,
    height: 127,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(14),
      color: color,
    ),
    child: Column(
      children: [
        img3,
        Text(
          text1,
          style: fontsize14,
        ),
        Text(
          text2,
          style: fontsize14,
        ),
      ],
    ),
  );
}
