
import 'package:e_learning_app/Theme/colors.dart';
import 'package:e_learning_app/Theme/fontstyle.dart';
import 'package:e_learning_app/controller/detailesscrenn/feedback_controller.dart';
import 'package:e_learning_app/views/component/button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';



class FeedbackScreen extends StatelessWidget {
  final FeedbackController feedbackController = Get.put(FeedbackController());

  @override
  Widget build(BuildContext context) {
    return Material(
      color: AppColor.lavender,
      child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Feedback',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 16),

              // Reviews and Students section
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Obx(() => Container(
                        width: 160,
                        height: 90,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(20)),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(Icons.star, color: Colors.orange),
                                SizedBox(width: 4),
                                Text('${feedbackController.reviewsCount.value}',
                                    style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold)),
                              ],
                            ),
                            Text('Reviews'),
                          ],
                        ),
                      )),
                  Obx(() => Container(
                        width: 160,
                        height: 90,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(20)),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(Icons.person_2_outlined,
                                    color: Colors.black54),
                                SizedBox(width: 4),
                                Text(
                                    '${feedbackController.studentsCount.value}',
                                    style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold)),
                              ],
                            ),
                            Text('Students'),
                          ],
                        ),
                      )),
                ],
              ),
              SizedBox(height: 16),

              // Feedback comments list
              Obx(() => ListView.builder(
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    itemCount: feedbackController.feedbacks.length,
                    itemBuilder: (context, index) {
                      final feedback = feedbackController.feedbacks[index];
                      return ListTile(
                        leading: CircleAvatar(
                          backgroundImage: AssetImage(feedback.img),
                        ),
                        title: Text(
                          feedback.username,
                          style: AppFont.fontsize15,
                        ),
                        subtitle: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              feedback.time,
                              style: AppFont.fontsize15,
                            ),
                            SizedBox(height: 4),
                            Text(
                              feedback.comment,
                              style: AppFont.fontsize12w400,
                            ),
                          ],
                        ),
                        isThreeLine: true,
                      );
                    },
                  )),
              SizedBox(height: 16),

              // Load More Button
              Container(
                padding: const EdgeInsets.only(left: 30),
                child: buttonScreen(
                  onTap: () {},
                  'Load more',
                  AppFont.fontsize18w500,
                  AppColor.bluecolor,
                  width: 335.w,
                  height: 60.h,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

