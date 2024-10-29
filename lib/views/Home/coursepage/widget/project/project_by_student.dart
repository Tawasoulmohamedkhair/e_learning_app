import 'package:e_learning_app/Theme/colors.dart';
import 'package:e_learning_app/Theme/fontstyle.dart';
import 'package:flutter/material.dart';

//this widget for displaying all the projects and also add project from the button in the screen
Widget projectbystudent(String title, TextButton button1) {
  return Container(
    padding: const EdgeInsets.only(left: 20),
    color: AppColor. lavender,
    child: Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              title,
           style: AppFont.fontsize16
            ),
            const SizedBox(
              width: 20,
            ),
            button1,
          ],
        ),
        // projectofstudent(),
      ],
    ),
  );
}

