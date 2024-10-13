import 'package:e_learning_app/Theme/assets_imge.dart';
import 'package:e_learning_app/Theme/colors.dart';
import 'package:e_learning_app/Theme/fontstyle.dart';
import 'package:e_learning_app/views/component/appbar_section.dart';
import 'package:e_learning_app/views/Home/coursepage/UI/home.dart';
import 'package:e_learning_app/views/Home/coursepage/widget/onlinecourses/onlinecourse.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import 'package:get/get.dart';
import 'package:e_learning_app/controller/onlinecourse/online_course_controller.dart';

//the mian screen of online courses
class CoursesScreen extends StatelessWidget {
  final CoursesController controller = Get.put(CoursesController());

  CoursesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.lavender,
      body: Padding(
        padding: const EdgeInsets.only(top: 12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 30,
            ),
            appbarsection(
              Icons.arrow_back,
              'Courses',
              Image.asset(AssetsImages.Book),
              () => Get.to(() => HomeScreen()),
            ),
            const SizedBox(height: 16),
            Container(
              padding: const EdgeInsets.only(top: 20, bottom: 20),
              width: 375.w,
              height: 200.h,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    'Online \nCourses',
                    style: AppFont.fontsize18,
                  ),
                  SizedBox(
                    width: 40.w,
                  ),
                  SizedBox(
                      width: 154.w,
                      height: 154.h,
                      child: Image.asset(AssetsImages.illustration))
                ],
              ),
            ),
            Expanded(
              child: Obx(() => Container(
                    padding: const EdgeInsets.only(left: 10, right: 10),
                    height: 600,
                    decoration: const BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(28),
                            topRight: Radius.circular(28))),
                    child: ListView.builder(
                      itemCount: controller.courses.length,
                      itemBuilder: (context, index) {
                        final course = controller.courses[index];
                        return AnimationConfiguration.staggeredList(
                            position: index,
                            duration: const Duration(milliseconds: 500),
                            child: SlideAnimation(
                                verticalOffset: 50.0,
                                child: FadeInAnimation(
                                    child: CourseList(course: course))));
                      },
                    ),
                  )),
            ),
          ],
        ),
      ),
    );
  }
}

