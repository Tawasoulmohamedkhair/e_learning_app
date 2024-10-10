import 'package:e_learning_app/Theme/assets_imge.dart';
import 'package:e_learning_app/Theme/colors.dart';
import 'package:e_learning_app/views/Onboarding/widget/clip_path_onboarding_screen.dart';
import 'package:e_learning_app/views/component/splashand_onboarding_screen_content.dart';
import 'package:e_learning_app/views/Onboarding/ui/onboarding_screen_explore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class OnboardingFindCourseScreen extends StatelessWidget {
  const OnboardingFindCourseScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return SingleChildScrollView(
      child: Material(
        color: AppColor.lavender,
        child: Container(
          width: 375.w,
          height: 813.h,
          decoration: const BoxDecoration(
            color: AppColor.lavender,
          ),
          child: Column(children: [
            Stack(
              children: [
                Container(
                  width: width,
                  height: 420,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage((AssetsImages.find))),
                  ),
                  child: Align(
                      alignment: const Alignment(.600, -.50),
                      child: SplashContentScreen(
                        color: AppColor.philippineGray,
                        img1: Image.asset(AssetsImages.circle),
                      )),
                ),
                Positioned(
                  top: 5,
                  bottom: 50,
                  left: 100,
                  child: Align(
                    alignment: const Alignment(-.400, -.700),
                    child: SplashContentScreen(
                      color: AppColor.royalorange,
                      img1: Image.asset(AssetsImages.Frame),
                    ),
                  ),
                ),
                Positioned(
                  top: 300,
                  left: 30,
                  child: Align(
                      alignment: const Alignment(.900, -.400),
                      child: SplashContentScreen(
                        color: AppColor.bluecolor,
                        img1: Image.asset(AssetsImages.contact_card),
                      )),
                ),
                Positioned(
                  top: 250,
                  right: 30,
                  child: Align(
                      alignment: const Alignment(1, -.80),
                      child: SplashContentScreen(
                        color: AppColor.royalorange,
                        img1: Image.asset(AssetsImages.healthicons),
                      )),
                ),
              ],
            ),
            Stack(children: [
              Positioned(
                child: Stack(children: [
                  ClippathOnboardingScreen(
                    'Ready to find \n a Course',
                    'A handful of model sentence structures,\n too generate Lorem which looks reason\n able.',
                    70,
                    onTap: () => Get.to(() => const OnboardingScreenExplore()),
                  ),
                ]),
              )
            ])
          ]),
        ),
      ),
    );
  }
}
