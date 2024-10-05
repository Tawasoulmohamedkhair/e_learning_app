import 'package:e_learning_app/Theme/colors.dart';
import 'package:e_learning_app/Theme/fontstyle.dart';
import 'package:e_learning_app/Theme/style.dart';
import 'package:e_learning_app/views/component/button.dart';
import 'package:e_learning_app/views/coursepage/widget/project/project_item.dart';
import 'package:flutter/material.dart';

//this widget for displaying  all the projects of students
Widget projectofstudent() {
  return Container(
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        projectitem(
          Image.asset('assets/images/unsplash.png'),
          Image.asset('assets/images/Project 2.png'),
        ),
        const SizedBox(
          height: 20,
        ),
        projectitem(
          Image.asset('assets/images/Project 3.png'),
          Image.asset('assets/images/unsplash3.png'),
        ),
        SizedBox(
          child: sizeboxs,
        ),
         ButtonScreen(
          onTap: () {},
          'Load more',
          fontsize18w500,
          bluecolor,
          width: 335,
          height: 60,
        ),
      ],
    ),
  );
}
