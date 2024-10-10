import 'package:e_learning_app/Theme/assets_imge.dart';
import 'package:e_learning_app/Theme/colors.dart';
import 'package:e_learning_app/Theme/fontstyle.dart';
import 'package:e_learning_app/views/Home/coursepage/widget/productdesign/course_details.dart';
import 'package:e_learning_app/views/Home/coursepage/widget/productdesign/text_of_course_details.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

//this widget for the second part of the screen of product design and the product design details
Widget coursecontainer(Color color) {
  return Container(
    decoration: BoxDecoration(
        color: color,
        borderRadius: (color == Colors.white)
            ? BorderRadius.only(
                topLeft: Radius.circular(30.r),
                topRight: Radius.circular(30.r),
              )
            : BorderRadius.circular(0.r)),
    width: double.infinity,
    height: 450.h,
    child: Stack(
      children: [
        Column(children: [
          SizedBox(
            height: 30.h,
          ),
          textofcoursedetails(
              'Product Design v1.0',
              AppFont.fontsize15,
              '\$74.00',
              AppColor.blackcolor,
              '6h 14min · 24 Lessons',
              AppFont.fontsize12w400,
              'About this course',
              AppFont.fontsize15,
              'Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, ',
              AppColor.sonicSilver),
          SizedBox(
            height: 20.h,
          ),
          const Center(
            child: Icon(Icons.keyboard_arrow_down_outlined),
          ),
          SizedBox(
            height: 10.h,
          ),
          coursedetails(
            color: AppColor.bluecolor,
            Icons.done,
            text1: '01',
            text2: 'Welcome to the Course',
            text3: '6:10',
            text4: 'mins',
            img: Image.asset(AssetsImages.Polygon),
          ),
          SizedBox(
            height: 10.h,
          ),
          coursedetails(
            color: AppColor.bluecolor,
            Icons.done,
            text1: '02 ',
            text2: 'Process overview',
            text3: '6:10',
            text4: 'mins',
            img: Image.asset(
              AssetsImages.Polygon,
            ),
          ),
          SizedBox(
            height: 10.h,
          ),
          coursedetails(
            color: AppColor.bluecolor,
            Icons.add,
            text1: '03 ',
            text2: 'Discovery',
            text3: '6:10',
            text4: 'mins',
            img: Image.asset(
              AssetsImages.lock,
            ),
          ),
          
          
        ]),
      ],
    ),
  );
}
