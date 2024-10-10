import 'package:e_learning_app/Theme/assets_imge.dart';
import 'package:e_learning_app/Theme/colors.dart';
import 'package:e_learning_app/views/Onboarding/ui/onboarding_screen_find_course.dart';
import 'package:e_learning_app/views/Onboarding/widget/clip_path_onboarding_screen.dart';
import 'package:e_learning_app/views/component/splashand_onboarding_screen_content.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class OnboardingScheduleScreen extends StatelessWidget {
  const OnboardingScheduleScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Material(
          color: AppColor.lavender,
          child: Container(
            width: 375.w,
            height: 812.h,
            decoration: const BoxDecoration(
              color: AppColor.lavender,
            ),
            child: Column(children: [
              Stack(
                children: [
                  Container(
                    width: double.infinity,
                    height: 420,
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage(
                        AssetsImages.schedule,
                      )),
                    ),
                    child: Column(
                      children: [
                        Align(
                            alignment: const Alignment(.900, .100),
                            child: SplashContentScreen(
                              color: AppColor.philippineGray,
                              img1: Image.asset(
                                AssetsImages.circle,
                              ),
                            )),
                      ],
                    ),
                  ),
                  Positioned(
                    top: 5,
                    bottom: 50,
                    left: 20,
                    child: Align(
                      alignment: const Alignment(-.50, -.900),
                      child: SplashContentScreen(
                        color: AppColor.bluecolor,
                        img1: Image.asset(AssetsImages.contact_card),
                      ),
                    ),
                  ),
                ],
              ),
              Stack(children: [
                Positioned(
                  child: Stack(children: [
                    ClippathOnboardingScreen(
                      'Learn on your \n Schedule',
                      'A handful of model sentence structures,\n too generate Lorem which looks reason\n able.',
                      50,
                      onTap: () => Get.to(() => OnboardingFindCourseScreen()),
                    ),
                    Positioned(
                      left: 30,
                      child: Align(
                        alignment: const Alignment(1, -.80),
                        child: SplashContentScreen(
                          color: AppColor.bluecolor,
                          img1: Image.asset(AssetsImages.cap),
                        ),
                      ),
                    ),
                    Positioned(
                      right: 30,
                      child: Align(
                        alignment: const Alignment(1, -.80),
                        child: Container(
                          width: 52,
                          height: 52,
                          decoration: BoxDecoration(
                              color: AppColor.royalorange,
                              borderRadius: BorderRadius.circular(18)),
                          child: Container(
                            child: Image.asset(AssetsImages.Frame),
                          ),
                        ),
                      ),
                    ),
                  ]),
                )
              ])
            ]),
          ),
        ),
      ),
    );
  }
}
