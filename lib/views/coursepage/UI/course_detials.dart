import 'package:e_learning_app/Theme/colors.dart';
import 'package:e_learning_app/views/coursepage/widget/comment/comment.dart';
import 'package:e_learning_app/views/coursepage/widget/overview/overview_page.dart';
import 'package:e_learning_app/views/coursepage/widget/project/project.dart';
import 'package:e_learning_app/views/coursepage/widget/videos/detailes_of_video.dart';
import 'package:e_learning_app/views/coursepage/widget/feedback/feedback.dart';
import 'package:flutter/material.dart';

class CourseDetialsScreen extends StatelessWidget {
  const CourseDetialsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: lavender,
      body: ListView.builder(
          itemCount: 1,
          shrinkWrap: true,
          scrollDirection: Axis.vertical,
          itemBuilder: (context, index) {
            return Column(
              children: [
                Detailesofvideos(),
                overviewscreen(),
                const SizedBox(height: 20),
                feedbackscreen(),
                projectscreen(),
                Comments(),
              ],
            );
          }),
    );
  }
}
