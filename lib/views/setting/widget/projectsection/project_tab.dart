import 'package:e_learning_app/controller/setting/project_controller.dart';
import 'package:e_learning_app/model/setting/profilemodel.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class ProjectTab extends GetView<ProfileModel> {
  final ProjectsController projectController = Get.put(ProjectsController());

  ProjectTab({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: 500.h,
        child: GridView.builder(
          itemCount: projectController.projects.length,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 10,
            mainAxisSpacing: 10,
          ),
          itemBuilder: (context, index) {
            final ImageData = projectController.projects[index];
            return Image.asset(ImageData.imagePath, fit: BoxFit.cover);
          },
        ));
  }
}
