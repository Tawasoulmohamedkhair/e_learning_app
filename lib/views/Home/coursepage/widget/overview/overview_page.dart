
import 'package:e_learning_app/Theme/colors.dart';
import 'package:e_learning_app/Theme/fontstyle.dart';
import 'package:e_learning_app/controller/detailesscrenn/overview_controller.dart';
import 'package:e_learning_app/views/Home/coursepage/widget/lessons_page.dart';
import 'package:e_learning_app/views/component/button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class OverviewScreen extends StatelessWidget {
  final OverviewController courseController = Get.put(OverviewController());

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2, // Two tabs
      child: Scaffold(
        backgroundColor: AppColor.lavender,
        appBar: AppBar(
          backgroundColor: AppColor.lavender,
          bottom: TabBar(
            indicatorSize: TabBarIndicatorSize.tab,
            indicatorColor: AppColor.bluecolor,
            labelColor: AppColor.blackcolor,
            onTap: (index) {
              courseController.changeTab(index);
            },
            tabs: [
              Tab(
                child: Text('Overview', style: AppFont.fontsize21),
                //text: ,
              ),
              Tab(
                child: Text(
                  'Lessons',
                  style: AppFont.fontsize21w500,
                ),
              ),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            // Overview Tab
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Container(
                height: 400,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Obx(() => Text(
                          courseController.course.value.introduction,
                          style: AppFont.fontsize15,
                        )),
                    SizedBox(height: 8),
                    Obx(() => Text(
                          courseController.course.value.details,
                          style: AppFont.fontsize12w400,
                        )),
                    SizedBox(height: 50),

                    Obx(() => Text(
                          courseController.course.value.subdetails,
                          style: AppFont.fontsize12w400,
                        )),
                    SizedBox(height: 16),

                    // "See more" button
                    buttonScreen(
                        onTap: () {},
                        'See more',
                        AppFont.fontsize18w500,
                        AppColor.bluecolor,
                        width: 335.w,
                        height: 60.h),
                  ],
                ),
              ),
            ),

            // Lessons Tab
            LessonPage(),
          ],
        ),
      ),
    );
  }
}

