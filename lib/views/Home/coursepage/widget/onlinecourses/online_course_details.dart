import 'package:e_learning_app/Theme/assets_imge.dart';
import 'package:e_learning_app/Theme/colors.dart';
import 'package:e_learning_app/Theme/fontstyle.dart';
import 'package:e_learning_app/controller/onlinecourse/student_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

Widget onlinecoursescreen() {
  final StudentController controller = Get.put(StudentController());

  return Obx(() {
    var student = controller.student.value;
    return Container(
      padding: EdgeInsets.only(left: 20, right: 20),
      color: AppColor.lavender,
      height: 813.h,
      child: Column(
        children: [
          // Profile section

          Column(
            children: [
              Column(
                children: [
                  Container(
                    width: 90.w,
                    height: 90.h,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20.r),
                        color: AppColor.sonicSilver.withValues(
                          alpha: 0.5,
                        )),
                    child: Image.asset(
                        width: 90.w, height: 90.h, AssetsImages.Mask),
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        student.name,
                        style: AppFont.fonsize23w500,
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
                            Icon(Icons.school),
                            SizedBox(width: 5),
                            Text(student.role),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(
                height: 40,
              ),
            ],
          ),
          // Goal and Stats section
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                SizedBox(
                  height: 10.h,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    _buildStatCard(
                        "Goal",
                        "${student.goalPercentage}%",
                        Image.asset(AssetsImages.perspaleta1),
                        AppColor.bluecolor),
                    SizedBox(
                      width: 5.r,
                    ),
                    _buildStatCard(
                        "Total Class",
                        "${student.totalClasses}",
                        Image.asset(AssetsImages.perspaleta),
                        AppColor.royalorange),
                    SizedBox(
                      width: 5.r,
                    ),
                    _buildStatCard(
                        "Total Books",
                        "+${student.totalBooks}",
                        Image.asset(AssetsImages.Instapost),
                        AppColor.bluecolor),
                  ],
                ),
                SizedBox(
                  height: 30.h,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10, right: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Course Details',
                        style: AppFont.fontsize19w500,
                      ),
                      Container(
                        padding: const EdgeInsets.only(left: 5, right: 5),
                        width: 100.w,
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
                ),
              ],
            ),
          ),

          SizedBox(
            height: 10,
          ),
          // Course Details
          Expanded(
            child: ListView.builder(
              itemCount: student.courses.length,
              itemBuilder: (context, index) {
                var course = student.courses[index];
                return ListTile(
                  leading: Container(
                      width: 37.w,
                      height: 37.h,
                      decoration: BoxDecoration(
                        color: AppColor.bluecolor,
                        borderRadius: BorderRadius.all(Radius.circular(10.r)),
                      ),
                      child: Icon(color: Colors.white, Icons.play_arrow_sharp)),
                  title: Text(
                    course.title,
                    style: AppFont.fontsize19w500,
                  ),
                  subtitle: Text(
                    course.description,
                    style: AppFont.fontw400,
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  });
}

Widget _buildStatCard(String title, String value, Image img, Color color) {
  return Container(
    padding: const EdgeInsets.only(top: 5, left: 5),
    width: 90.w,
    height: 127.h,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(14),
      color: color,
    ),
    child: Column(
      children: [
        img,
        SizedBox(height: 10),
        Text(value,
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
        SizedBox(height: 5),
        Text(title),
      ],
    ),
  );
}












/**
 * SingleChildScrollView(
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
                onTap: () => Get.offAll(() => SettingScreen()),
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
                //Icon(Icons.school),
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
 * 
 * 
 */