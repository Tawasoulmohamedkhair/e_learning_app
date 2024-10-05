import 'package:e_learning_app/Theme/colors.dart';
import 'package:e_learning_app/Theme/fontstyle.dart';
import 'package:e_learning_app/Theme/style.dart';
import 'package:e_learning_app/views/coursepage/UI/online_courses_screen.dart';
import 'package:e_learning_app/views/coursepage/widget/onlinecourses/details_of_student.dart';
import 'package:e_learning_app/views/coursepage/widget/onlinecourses/list_of_course_details.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

Widget onlinecoursescreen() {
  return SingleChildScrollView(
    child: Container(
      color: lavender,
      height: 813,
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
                onTap: () => Get.offAll(() => OnlineCoursesScreen()),
                child: const Icon(Icons.settings),
              ),
            ],
          ),
          Container(
            height: 107,
            child: Stack(children: [
              Align(
                  alignment: Alignment.center,
                  child: Image.asset('assets/images/Rectangle 896.png')),
              Align(
                alignment: Alignment.center,
                child: Container(
                  width: 90,
                  height: 90,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: sonicSilver.withOpacity(.5),
                  ),
                ),
              ),
              Center(
                child: Image.asset(
                    width: 90, height: 90, 'assets/images/Mask Group.png'),
              ),
            ]),
          ),
          Container(
            width: 120,
            height: 29,
            child: Text(
              'Tom Cruise',
              style: fonsize23w500,
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(70),
            ),
            width: 89,
            height: 33,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset('assets/images/cap 1.png'),
                Text(
                  'Student',
                  style: fontsize14w500,
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              detailsofstudent(
                  Image.asset(
                      width: 30, height: 40, 'assets/images/perspaleta1.png'),
                  '85%',
                  'Goal',
                  bluecolor),
              const SizedBox(
                width: 20,
              ),
              detailsofstudent(
                  Image.asset(
                      width: 37, height: 39, 'assets/images/perspaleta.png'),
                  '32',
                  'Total Class',
                  royalorange),
              const SizedBox(
                width: 20,
              ),
              detailsofstudent(
                  Image.asset(
                      width: 34, height: 46, 'assets/images/Instapost.png'),
                  '+10',
                  'Total Books',
                  bluecolor),
            ],
          ),
          const SizedBox(
            height: 30,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Course Details',
                style: fontsize19w500,
              ),
              Container(
                padding: const EdgeInsets.only(left: 5, right: 5),
                width: 130,
                height: 24,
                decoration: BoxDecoration(
                    color: bluecolor, borderRadius: BorderRadius.circular(6)),
                child: Row(
                  children: [
                    Image.asset('assets/images/Clocks.png'),
                    const SizedBox(
                      width: 5,
                    ),
                    Text(
                      '3 hours, 20 min',
                      style: fontsize10,
                    ),
                  ],
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 40,
          ),
          listofcoursedetails(
              Image.asset('assets/images/Group 23.png'),
              'Introduction',
              'Lorem ipsum dolor sit amet, consectetur\n adipiscing elit.'),
          const SizedBox(
            height: 20,
          ),
          listofcoursedetails(
              Image.asset('assets/images/Group 23.png'),
              'The Language of Color',
              'Lorem ipsum dolor sit amet, consectetur \nadipiscing elit.'),
          const SizedBox(
            height: 20,
          ),
          listofcoursedetails(
              Image.asset('assets/images/Group 23.png'),
              'The Psychology of Color',
              'Lorem ipsum dolor sit amet, consectetur\n adipiscing elit.'),
        ],
      ),
    ),
  );
}
