import 'package:e_learning_app/Theme/colors.dart';
import 'package:e_learning_app/controller/onboarding/onboarding_controller.dart';
import 'package:e_learning_app/views/Home/coursepage/UI/CourseScreen/online_courses_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:step_progress_indicator/step_progress_indicator.dart';

class CircleIndector extends GetView<OnboardingController> {
  CircleIndector({super.key});
  final controller = Get.put(OnboardingController());

  @override
  Widget build(BuildContext context) {
    Get.put(OnboardingController());
    return GetBuilder<OnboardingController>(
      builder: (controller) {
        return CircularStepProgressIndicator(
            totalSteps: 100,
            currentStep: 25,
            stepSize: 2,
            selectedColor: AppColor.bluecolor,
            unselectedColor: AppColor.lavender,
            padding: 0,
            width: 100,
            height: 100,
            selectedStepSize: 2,
            roundedCap: (_, __) => true,
            child: InkWell(
                onTap: () {
                  Get.off(() => CoursesScreen());
                },
                child: Icon(color: Colors.blue, Icons.arrow_forward)));
      },
    );
  }
}
