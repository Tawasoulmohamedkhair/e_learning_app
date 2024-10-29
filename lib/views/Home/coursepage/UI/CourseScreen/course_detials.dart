import 'package:e_learning_app/Theme/colors.dart';
import 'package:e_learning_app/views/Home/coursepage/widget/comment/comment.dart';
import 'package:e_learning_app/views/Home/coursepage/widget/feedback/feedback.dart';
import 'package:e_learning_app/views/Home/coursepage/widget/project/project.dart';
import 'package:e_learning_app/views/Home/coursepage/widget/videos/detailes_of_video.dart';
import 'package:flutter/material.dart';

import '../../widget/overview/overview_page.dart';

class CourseDetialsScreen extends StatelessWidget {
  const CourseDetialsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: AppColor.lavender,
        body: SafeArea(
          child: SingleChildScrollView(
            child: Container(
              child: Column(
                children: [
                  Container(height: 600, child: CourseDetailVideo()),
                  Container(height: 500, child: OverviewScreen()),
                  Container(
                    color: AppColor.lavender,
                    height: 600,
                    child: FeedbackScreen(),
                  ),
                  
                  Container(height: 600, child: ProjectListScreen()),
                  Container(height: 450, child: CommentListScreen()),
                ],
              ),
            ),
          ),
        )
          
    );
  }
}
