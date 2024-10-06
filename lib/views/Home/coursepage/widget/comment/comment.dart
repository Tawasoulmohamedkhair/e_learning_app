import 'package:e_learning_app/Theme/colors.dart';
import 'package:e_learning_app/Theme/fontstyle.dart';
import 'package:e_learning_app/Theme/style.dart';
import 'package:e_learning_app/views/Home/coursepage/widget/comment/student_comment.dart';
import 'package:flutter/material.dart';

//this widget for displaying the comments last section of screen
Widget Comments() {
  return Container(
    padding: const EdgeInsets.only(left: 40),
    child: Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              '5 Comments',
              style: AppFont.fontsize16,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextButton(
                onPressed: () {},
                style: TextButton.styleFrom(
                  backgroundColor: AppColor.sonicSilver,
                ),
                child: Text(
                  'AddComment',
                  style: AppFont.fontsize14,
                ),
              ),
            )
          ],
        ),
        studentcomment(
          Image.asset('assets/images/avata.png'),
          '@mouni',
          '11 mins ago   .   Student',
          'How to get better at line? I am really stuck in this\n step!',
          '10',
        ),
        Container(
          child: TextButton(
              onPressed: () {},
              style: TextButton.styleFrom(
                backgroundColor: AppColor.sonicSilver,
              ),
              child: Text(
                'view 1replies',
                style: AppFont.fontsize14,
              )),
        ),
         SizedBox(
          child: sizeboxs,
        ),
        studentcomment(
          Image.asset('assets/images/Avatars.png'),
          '@mouni',
          '11 mins ago   .   Student',
          'How to get better at line? I am really stuck in this\n step!',
          '10',
        ),
      ],
    ),
  );
}
