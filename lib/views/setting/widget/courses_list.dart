/*import 'package:e_learning_app/Theme/fontstyle.dart';
import 'package:e_learning_app/model/data/courser_data.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CourserListScreen extends StatelessWidget {
  const CourserListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20, right: 20, top: 10),
      child: SizedBox(
        width: 700.w,
        height: 700.h,
        child: ListView.builder(
          padding: const EdgeInsets.only(top: 10),
          scrollDirection: Axis.vertical,
          shrinkWrap: true,
          itemCount: courseslist.length,
          itemBuilder: (context, index) {
            final item = courseslist[index];
            return Container(
              width: 300.w,
              padding: const EdgeInsets.only(top: 5),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image.asset(
                    width: 80.w,
                    height: 92.h,
                    item.image,
                  ),
                  SizedBox(
                    width: 20.w,
                  ),
                  Expanded(
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            item.title,
                            style: AppFont.fontsize18,
                          ),
                          Text(
                            item.subtitle,
                            style: AppFont.fontsize12w400,
                          ),
                          SizedBox(
                            height: 5.h,
                          ),
                          Row(
                            children: [
                              item.icon,
                              Text(
                                item.text,
                                style: AppFont.fontsize12w500,
                              ),
                              item.icon1,
                              Text(
                                item.rating,
                                style: AppFont.fontsizew300,
                              )
                            ],
                          ),
                        ]),
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}*/

import 'package:e_learning_app/Theme/colors.dart';
import 'package:e_learning_app/Theme/fontstyle.dart';
import 'package:e_learning_app/controller/setting/course_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class CourseListScreen extends GetView<CourseController> {
  final CourseController controller = Get.put(CourseController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.lavender,
      body: ListView.builder(
        itemCount: controller.courses.length,
        itemBuilder: (context, index) {
          final course = controller.courses[index];
          return ListTile(
            leading: Image.asset(width: 80.w, height: 92.h, course.imageUrl),
            title: Text(
              course.title,
              style: AppFont.fontsize18,
            ),
            subtitle: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  course.author,
                  style: AppFont.fontsize12w400,
                ),
                Row(
                  children: [
                    Icon(Icons.person),
                    Text(
                      '${course.students} students',
                      style: AppFont.fontsize12w500,
                    ),
                    SizedBox(width: 8),
                    Icon(Icons.star),
                    Text(course.rating.toString()),
                  ],
                ),
              ],
            ),
            onTap: () {
              // Navigate to course details screen
            },
          );
        },
      ),
    );
  }
}
