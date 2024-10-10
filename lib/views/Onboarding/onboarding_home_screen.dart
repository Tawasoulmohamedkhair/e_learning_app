import 'package:e_learning_app/Theme/colors.dart';
import 'package:e_learning_app/views/Onboarding/ui/onboarding_screen_explore.dart';
import 'package:e_learning_app/views/Onboarding/ui/onboarding_screen_find_course.dart';
import 'package:e_learning_app/views/Onboarding/ui/onboardingonlinelearningplatform.dart';
import 'package:e_learning_app/views/Onboarding/ui/onboardingscreenschedule.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnboardingHomeScreen extends StatefulWidget {
  const OnboardingHomeScreen({super.key});

  @override
  State<OnboardingHomeScreen> createState() => _OnboardingHomeScreenState();
}

class _OnboardingHomeScreenState extends State<OnboardingHomeScreen> {
  PageController pagecontroller = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Container(
          width: double.infinity,
          padding: const EdgeInsets.only(top: 80),
          decoration: BoxDecoration(
            color: AppColor.lavender,
            borderRadius: BorderRadius.circular(20),
          ),
          child: Stack(children: [
            PageView(
                scrollDirection: Axis.horizontal,
                controller: pagecontroller,
                children: const [
                  OnboardingOnlineLearningPlatform(),
                  OnboardingScheduleScreen(),
                  OnboardingFindCourseScreen(),
                  OnboardingScreenExplore(),
                ]),
            Container(
              alignment: const Alignment(0.0, .90),
              child: SmoothPageIndicator(
                controller: pagecontroller,
                count: 4,
                effect: const SwapEffect(
                    activeDotColor: AppColor.bluecolor,
                    dotHeight: 5,
                    dotWidth: 10,
                    dotColor: AppColor.philippineGray),
              ),
            )
          ]),
        ),
      ),
    );
  }
}
