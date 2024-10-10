import 'package:e_learning_app/Theme/assets_imge.dart';
import 'package:e_learning_app/Theme/colors.dart';
import 'package:e_learning_app/views/Onboarding/widget/clip_path_onboarding_screen.dart';
import 'package:e_learning_app/views/setup_learning_map/Ui/reminder_screen.dart';
import 'package:e_learning_app/views/component/splashand_onboarding_screen_content.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class OnboardingScreenExplore extends StatelessWidget {
  const OnboardingScreenExplore({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      color: AppColor.lavender,
      child: SingleChildScrollView(
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
                  width: double.infinity,
                  height: 420,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage(AssetsImages.explore)),
                  ),
                  child: Align(
                    alignment: const Alignment(.600, -.900),
                    child: SplashContentScreen(
                        color: AppColor.bluecolor,
                        img1: Image.asset(AssetsImages.cap)),
                  ),
                ),
                Positioned(
                  top: 60,
                  bottom: 50,
                  left: 20,
                  child: Align(
                    alignment: const Alignment(-.400, -.700),
                    child: SplashContentScreen(
                        img1: Image.asset(AssetsImages.healthicons),
                        color: AppColor.royalorange),
                  ),
                ),
                Positioned(
                  top: 300,
                  left: 30,
                  child: Align(
                      alignment: const Alignment(.900, -.400),
                      child: SplashContentScreen(
                        color: AppColor.philippineGray,
                        img1: Image.asset(AssetsImages.circle),
                      )),
                ),
                Positioned(
                  top: 250,
                  right: 30,
                  child: Align(
                      alignment: const Alignment(1, -.80),
                      child: SplashContentScreen(
                        color: AppColor.royalorange,
                        img1: Image.asset(AssetsImages.Frame),
                      )),
                ),
              ],
            ),
            Stack(children: [
              Positioned(
                child: Stack(children: [
                  ClippathOnboardingScreen(
                    'Explore it \nToday!',
                    'A handful of model sentence structures,\n too generate Lorem which looks reason\n able.',
                    100,
                    onTap: () => Get.to(() => const Learning_Reminder_Screen()),
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
