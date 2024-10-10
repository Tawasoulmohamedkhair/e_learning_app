import 'package:e_learning_app/Theme/assets_imge.dart';
import 'package:e_learning_app/Theme/colors.dart';
import 'package:e_learning_app/Theme/fontstyle.dart';
import 'package:e_learning_app/views/Onboarding/ui/onboardingscreenschedule.dart';
import 'package:flutter/material.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:step_progress_indicator/step_progress_indicator.dart';

class OnboardingOnlineLearningPlatform extends StatelessWidget {
  const OnboardingOnlineLearningPlatform({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Material(
        color: AppColor.lavender,
        child: Container(
          width: 375.w,
          height: 813.h,
          decoration: const BoxDecoration(
            color: AppColor.lavender,
          ),
          child: SingleChildScrollView(
            child: Column(children: [
              Stack(
                children: [
                  Container(
                    height: 320.h,
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage(AssetsImages.online),
                      ),
                    ),
                  ),
                  Positioned(
                    top: 30,
                    left: 140,
                    child: Align(
                      alignment: const Alignment(1, -.50),
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(18.r),
                          color: AppColor.bluecolor,
                        ),
                        width: 52.61.w,
                        height: 52.61.h,
                        child: Container(
                          child: Image.asset(AssetsImages.cap),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    top: 80,
                    bottom: 100,
                    left: 20,
                    child: Align(
                      alignment: const Alignment(-.50, -.30),
                      child: Container(
                        width: 60.w,
                        height: 60.h,
                        decoration: BoxDecoration(
                            color: AppColor.royalorange,
                            borderRadius: BorderRadius.circular(18)),
                        child: Container(
                          child: Image.asset(AssetsImages.healthicons),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Stack(children: [
                Positioned(
                  child: Stack(children: [
                    ClipPath(
                        clipper: OvalTopBorderClipper(),
                        child: Container(
                          width: double.infinity,
                          padding: const EdgeInsets.only(top: 90),
                          height: 517.h,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(80.r),
                                topRight: Radius.circular(80.r)),
                          ),
                          child: Column(
                            children: [
                              SizedBox(
                                height: 15.h,
                              ),
                              Text('Online Learning\nPlatform',
                                  textAlign: TextAlign.center,
                                  style: AppFont.fontsize25),
                              Text(
                                textAlign: TextAlign.center,
                                'A handful of model sentence structures,\n too generate Lorem which looks reason\n able.',
                                style: AppFont.fontsize15,
                              ),
                              SizedBox(
                                height: 20.h,
                              ),
                              CircularStepProgressIndicator(
                                totalSteps: 100,
                                currentStep: 20,
                                stepSize: 2,
                                selectedColor: AppColor.bluecolor,
                                unselectedColor: AppColor.lavender,
                                padding: 0,
                                width: 71,
                                height: 71,
                                selectedStepSize: 2,
                                roundedCap: (_, __) => true,
                                child: TextButton(
                                  onPressed: () => Get.offAll(
                                      () => const OnboardingScheduleScreen()),
                                  child: const Icon(
                                      color: AppColor.bluecolor,
                                      size: 44,
                                      Icons.arrow_circle_right),
                                ),
                              ),
                            ],
                          ),
                        )),
                    Align(
                      alignment: const Alignment(-.90, -.90),
                      child: Container(
                        width: 52.w,
                        height: 52.h,
                        decoration: BoxDecoration(
                            color: AppColor.philippineGray,
                            borderRadius: BorderRadius.circular(18.r)),
                        child: Container(
                          child: Image.asset(AssetsImages.circle),
                        ),
                      ),
                    ),
                    Positioned(
                      right: 30,
                      child: Align(
                        alignment: const Alignment(1, -.80),
                        child: Container(
                          width: 52.w,
                          height: 52.h,
                          decoration: BoxDecoration(
                              color: AppColor.royalorange,
                              borderRadius: BorderRadius.circular(18.r)),
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
