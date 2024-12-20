import 'package:e_learning_app/Theme/assets_imge.dart';
import 'package:e_learning_app/Theme/colors.dart';
import 'package:e_learning_app/Theme/fontstyle.dart';
import 'package:e_learning_app/controller/onlinecourse/student_controller.dart';
import 'package:e_learning_app/views/Home/coursepage/UI/CourseScreen/course_detials.dart';
import 'package:e_learning_app/views/Home/coursepage/UI/CourseScreen/online_courses_screen.dart';
import 'package:e_learning_app/views/Home/coursepage/widget/onlinecourses/buildStatCard.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import 'package:get/get.dart';

class OnlineCourseDetails extends StatelessWidget {
  OnlineCourseDetails({super.key});
  final StudentController controller = Get.put(StudentController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.lavender,
      appBar: AppBar(
        backgroundColor: AppColor.lavender,
        leading: InkWell(
            child: const Icon(Icons.arrow_back),
            onTap: () {
              Get.off(() => CoursesScreen());
            }),
        actions: [
          IconButton(
              icon: const Icon(Icons.settings),
              onPressed: () {
                Get.offAll(() => CourseDetialsScreen());
              }),
        ],
      ),
      body: Obx(() {
        var student = controller.student.value;
        return SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.only(left: 20, right: 20),
            color: AppColor.lavender,
            height: 813.h,
            child: Column(
              children: [
                // Profile section

                Column(
                  children: [
                    Column(children: [
                      Container(
                        width: 90.w,
                        height: 80.h,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20.r),
                            color: AppColor.sonicSilver),
                        child: Image.asset(
                            width: 90.w, height: 90.h, AssetsImages.mask),
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
                                const Icon(Icons.school),
                                const SizedBox(width: 5),
                                Text(student.role),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ]),
                    const SizedBox(
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
                          buildStatCard(
                              "Goal",
                              "${student.goalPercentage}%",
                              Image.asset(AssetsImages.perspaleta1),
                              AppColor.bluecolor),
                          SizedBox(
                            width: 5.r,
                          ),
                          buildStatCard(
                              "Total Class",
                              "${student.totalClasses}",
                              Image.asset(AssetsImages.perspaleta),
                              AppColor.royalorange),
                          SizedBox(
                            width: 5.r,
                          ),
                          buildStatCard(
                              "Total Books",
                              "+${student.totalBooks}",
                              Image.asset(AssetsImages.instapost),
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
                                  Image.asset(AssetsImages.clocks),
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

                const SizedBox(
                  height: 10,
                ),
                // Course Details
                Expanded(
                  child: AnimationLimiter(
                    child: ListView.builder(
                      shrinkWrap: true,
                      itemCount: student.courses.length,
                      itemBuilder: (context, index) {
                        var course = student.courses[index];
                        return AnimationConfiguration.staggeredList(
                          position: index,
                          duration: const Duration(milliseconds: 375),
                          child: SlideAnimation(
                            verticalOffset: 50.0,
                            child: FadeInAnimation(
                              child: ListTile(
                                leading: Container(
                                    width: 37.w,
                                    height: 37.h,
                                    decoration: BoxDecoration(
                                      color: AppColor.bluecolor,
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(10.r)),
                                    ),
                                    child: const Icon(
                                        color: Colors.white,
                                        Icons.play_arrow_sharp)),
                                title: Text(
                                  course.title,
                                  style: AppFont.fontsize19w500,
                                ),
                                subtitle: Text(
                                  course.description,
                                  style: AppFont.fontw400,
                                ),
                              ),
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
      }),
    );
  }
}
