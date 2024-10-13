import 'package:e_learning_app/Theme/assets_imge.dart';
import 'package:e_learning_app/Theme/colors.dart';
import 'package:e_learning_app/Theme/fontstyle.dart';
import 'package:e_learning_app/Theme/style.dart';
import 'package:e_learning_app/views/Home/coursepage/UI/CourseScreen/onlinecoursdetails.dart';
import 'package:e_learning_app/views/Home/coursepage/widget/onlinecourses/details_of_student.dart';
import 'package:e_learning_app/views/Home/coursepage/widget/onlinecourses/list_of_course_details.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

Widget onlinecoursescreen() {
  return SingleChildScrollView(
    child: Container(
      color: AppColor.lavender,
      height: 813.h,
      padding: const EdgeInsets.only(left: 20, right: 20, top: 30),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              GestureDetector(child: const Icon(Icons.arrow_back)),
              sizeboxs,
              GestureDetector(
                onTap: () => Get.offAll(() => OnlineCourseDetails()),
                child: const Icon(Icons.settings),
              ),
            ],
          ),
          SizedBox(
            height: 107.h,
            child: Stack(children: [
              Align(
                  alignment: Alignment.center,
                  child: Image.asset(AssetsImages.Rectangle)),
              Align(
                alignment: Alignment.center,
                child: Container(
                  width: 90.w,
                  height: 90.h,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20.r),
                    color: AppColor.sonicSilver,
                  ),
                ),
              ),
              Center(
                child: Image.asset(
                    width: 90.w, height: 90.h, AssetsImages.Mask),
              ),
            ]),
          ),
          SizedBox(
            width: 120.w,
            height: 29.h,
            child: Text(
              'Tom Cruise',
              style: AppFont.fonsize23w500,
            ),
          ),
          SizedBox(
            height: 10.h,
          ),
          Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(70.r),
            ),
            width: 89.w,
            height: 33.h,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(AssetsImages.cap1),
                Text(
                  'Student',
                  style: AppFont.fontsize14w500,
                ),
              ],
            ),
          ),
          SizedBox(
            height: 20.h,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              detailsofstudent(
                  Image.asset(
                      width: 30.w,
                      height: 40.h,
                      AssetsImages.perspaleta1),
                  '85%',
                  'Goal',
                  AppColor.bluecolor),
              SizedBox(
                width: 7.w,
              ),
              detailsofstudent(
                  Image.asset(
                      width: 37.w,
                      height: 39.h,
                     AssetsImages.perspaleta),
                  '32',
                  'Total Class',
                  AppColor.royalorange),
              SizedBox(
                width: 20.w,
              ),
              detailsofstudent(
                  Image.asset(
                      width: 34, height: 46, AssetsImages.Instapost),
                  '+10',
                  'Total Books',
                  AppColor.bluecolor),
            ],
          ),
          SizedBox(
            height: 30.h,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Course Details',
                style: AppFont.fontsize19w500,
              ),
              Container(
                padding: const EdgeInsets.only(left: 5, right: 5),
                width: 130.w,
                height: 24.h,
                decoration: BoxDecoration(
                    color: AppColor.bluecolor,
                    borderRadius: BorderRadius.circular(6)),
                child: Row(
                  children: [
                    Image.asset(AssetsImages.Clocks),
                    SizedBox(
                      width: 5.w,
                    ),
                    Text(
                      '3 hours, 20 min',
                      style: AppFont.fontsize10,
                    ),
                  ],
                ),
              ),
            ],
          ),
          SizedBox(
            height: 40.h,
          ),
          listofcoursedetails(
              Image.asset(AssetsImages.Group23),
              'Introduction',
              'Lorem ipsum dolor sit amet, consectetur\n adipiscing elit.'),
          SizedBox(
            height: 20.h,
          ),
          listofcoursedetails(
              Image.asset(AssetsImages.Group23),
              'The Language of Color',
              'Lorem ipsum dolor sit amet, consectetur \nadipiscing elit.'),
          SizedBox(
            height: 20.h,
          ),
          listofcoursedetails(
              Image.asset(AssetsImages.Group23),
              'The Psychology of Color',
              'Lorem ipsum dolor sit amet, consectetur\n adipiscing elit.'),
        ],
      ),
    ),
  );
}
