import 'package:e_learning_app/Theme/assets_imge.dart';
import 'package:e_learning_app/Theme/colors.dart';
import 'package:e_learning_app/Theme/fontstyle.dart';
import 'package:e_learning_app/controller/detailesscrenn/video_controller.dart';
<<<<<<< HEAD
import 'package:e_learning_app/views/Home/coursepage/UI/CourseScreen/online_courses_screen.dart';
=======
>>>>>>> origin/main
import 'package:e_learning_app/views/setting/UI/courses_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class CourseDetailVideo extends StatelessWidget {
  final CourseControllers courseController = Get.put(CourseControllers());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.lavender,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: AppColor.lavender,
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios),
          onPressed: () {
<<<<<<< HEAD
=======
            Get.back();
>>>>>>> origin/main
          },
        ),
        title: Text("Details"),
        actions: [
          IconButton(
              onPressed: () {
                Get.off(ProfileStudentCourses());
              },
              icon: Icon(Icons.bookmark_outline)),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset('assets/images/unsplash.png'),
              Container(
                padding: const EdgeInsets.only(left: 10, top: 10, right: 10),
                width: 50.w,
                height: 30.h,
                color: AppColor.bluecolor,
                child: Text(
                  textAlign: TextAlign.center,
                  'HOT',
                  style: AppFont.fontsize12,
                ),
              ),
              // Video section
              /*  GetBuilder<CourseController>(builder: (controller) {
                if (controller.chewieController != null &&
                    controller.videoPlayerController.value.isInitialized) {
                  return Container(
                    height: 200,
                    width: double.infinity,
                    child: Chewie(
                      controller: controller.chewieController!,
                    ),
                  );
                } else {
                  return Container(
                    height: 200,
                    color: Colors.black12,
                    child: Center(
                      child: CircularProgressIndicator(),
                    ),
                  );
                }
              }),*/
              SizedBox(height: 16),

              // Course Information

              Row(
                children: [
                  SizedBox(
                    width: 38.w,
                    height: 38.h,
                    child: CircleAvatar(
                      radius: 20.r,
                      child: Image.asset(courseController.course.value.img),
                    ),
                  ),
                  SizedBox(
                    width: 10.w,
                  ),
                  Obx(() => Text(
                        ' ${courseController.course.value.author}',
                        style: AppFont.fontsize18,
                      )),
                ],
              ),
              SizedBox(height: 8),

              Obx(() => Text(
                    courseController.course.value.title,
                    style: AppFont.fontsize21,
                  )),

              SizedBox(height: 8),
              Row(
                children: [
                  Obx(() => Row(
                        children: [
                          Image.asset(AssetsImages.frame2),
                          Text('${courseController.course.value.duration}',
                              style: AppFont.fontsize12w400),
                        ],
                      )),
                  SizedBox(
                    width: 30.w,
                  ),
                  Obx(() => Row(
                        children: [
                          Icon(Icons.video_call_outlined),
                          Text('${courseController.course.value.lessons}',
                              style: AppFont.fontsize12w400),
                        ],
                      )),
                ],
              ),
              SizedBox(height: 20),

              Row(
                children: [
                  Row(
                    children: [
                      Icon(Icons.star_border_outlined,
                          color: Colors.black, size: 18),
                      Obx(() => Text('${courseController.course.value.rating}',
                          style: AppFont.fontsize12w400)),
                    ],
                  ),
                  SizedBox(
                    width: 50.w,
                  ),
                  Obx(() => Row(
                        children: [
                          Icon(Icons.person_2_outlined),
                          Text('${courseController.course.value.students}',
                              style: AppFont.fontsize12w400),
                        ],
                      )),
                ],
              ),
              SizedBox(height: 16),

              // Additional Course Details
              Text(
                'Lectus vitae lorem luctus mostie vitae mbi curabitur magna facilisis turpis nullam nibh gfas ultricies purus molestie quis impert id agger adipiscing molestie auctor arcu ium  atd eget faucibus quis id!',
                style: AppFont.fontsize12w400,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
