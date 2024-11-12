
import 'package:e_learning_app/Theme/colors.dart';
import 'package:e_learning_app/Theme/fontstyle.dart';
import 'package:e_learning_app/controller/detailesscrenn/project_controller.dart';
import 'package:e_learning_app/views/Home/coursepage/widget/project/project_by_student.dart';
import 'package:e_learning_app/views/component/button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class ProjectListScreen extends StatelessWidget {
  final ProjectController projectController = Get.put(ProjectController());

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          projectbystudent(
            'Project by student',
            TextButton(
              onPressed: () {},
              child: Text(
                'Add Project',
                style: AppFont.fontsize15,
              ),
            ),
          ),
          Container(
            height: 400,
            child: GridView.builder(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 8,
                mainAxisSpacing: 8,
              ),
              itemCount: projectController.projects.length,
              itemBuilder: (context, index) {
                final project = projectController.projects[index];
                return Column(
                  children: [
                    Image.asset(project.imageUrl),
                  ],
                );
              },
            ),
          ),
          buttonScreen(
            onTap: () {},
            'Load more',
            AppFont.fontsize18w500,
            AppColor.bluecolor,
            width: 335.w,
            height: 60.h,
          ),
        ],
      ),
    );
  }
}
