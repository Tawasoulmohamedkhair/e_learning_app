import 'package:e_learning_app/Theme/colors.dart';
import 'package:e_learning_app/views/Home/coursepage/widget/project/project_by_student.dart';
import 'package:flutter/material.dart';

Widget projectscreen() {
  return Material(
    child: SingleChildScrollView(
      child: Container(
        color: AppColor.lavender,
        height: 500,
        padding: const EdgeInsets.only(left: 20, right: 20),
        child: Column(
          children: [
            projectbystudent(
              'Project by student',
              TextButton(
                onPressed: () {},
                child: const Text('Add Project'),
              ),
            ),
          ],
        ),
      ),
    ),
  );
}
