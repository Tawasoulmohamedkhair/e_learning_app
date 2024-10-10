import 'package:e_learning_app/Theme/assets_imge.dart';
import 'package:e_learning_app/Theme/colors.dart';
import 'package:e_learning_app/Theme/fontstyle.dart';
import 'package:e_learning_app/Theme/style.dart';
import 'package:e_learning_app/views/component/button.dart';
import 'package:e_learning_app/views/Home/coursepage/widget/project/project_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

//this widget for displaying  all the projects of students
Widget projectofstudent() {
  return Container(
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        projectitem(
          Image.asset(AssetsImages.unsplash),
          Image.asset(AssetsImages.project2),
        ),
        SizedBox(
          height: 20.h,
        ),
        projectitem(
          Image.asset(AssetsImages.project3),
          Image.asset(AssetsImages.unsplash3),
        ),
        SizedBox(
          child: sizeboxs,
        ),
         ButtonScreen(
          onTap: () {},
          'Load more',
          AppFont.fontsize18w500,
          AppColor.bluecolor,
          width: 335.w,
          height: 60.h,
        ),
      ],
    ),
  );
}
