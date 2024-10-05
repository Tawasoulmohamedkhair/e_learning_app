import 'package:e_learning_app/Theme/colors.dart';
import 'package:e_learning_app/Theme/fontstyle.dart';
import 'package:e_learning_app/views/splash/Ui/SplashScreenSchedule.dart';
import 'package:flutter/material.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:step_progress_indicator/step_progress_indicator.dart';

class SplashOnlineLearningPlatform extends StatelessWidget {
  SplashOnlineLearningPlatform({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          width: 375.w,
          height: 812.h,
          decoration: const BoxDecoration(
            color: lavender,
          ),
          child: SingleChildScrollView(
            child: Column(children: [
              Stack(
                children: [
                  Container(
                    height: 408,
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('assets/images/online.png'),
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
                          borderRadius: BorderRadius.circular(18),
                          color: bluecolor,
                        ),
                        width: 52.61,
                        height: 52.61,
                        child: Container(
                          child: Image.asset('assets/images/cap.png'),
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
                        width: 60,
                        height: 60,
                        decoration: BoxDecoration(
                            color: royalorange,
                            borderRadius: BorderRadius.circular(18)),
                        child: Container(
                          child: Image.asset('assets/images/healthicons.png'),
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
                          height: 517,
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
                                  style: fontsize25),
                              Text(
                                textAlign: TextAlign.center,
                                'A handful of model sentence structures,\n too generate Lorem which looks reason\n able.',
                                style: fontsize15,
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              CircularStepProgressIndicator(
                                totalSteps: 100,
                                currentStep: 20,
                                stepSize: 2,
                                selectedColor: bluecolor,
                                unselectedColor: lavender,
                                padding: 0,
                                width: 71,
                                height: 71,
                                selectedStepSize: 2,
                                roundedCap: (_, __) => true,
                                child: TextButton(
                                  onPressed: () =>
                                      Get.offAll(() => SplashScreenSchedule()),
                                  child: const Icon(
                                      color: bluecolor,
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
                        width: 52,
                        height: 52,
                        decoration: BoxDecoration(
                            color: philippineGray,
                            borderRadius: BorderRadius.circular(18)),
                        child: Container(
                          child: Image.asset('assets/images/circle.png'),
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
                              color: royalorange,
                              borderRadius: BorderRadius.circular(18.r)),
                          child: Container(
                            child: Image.asset('assets/images/Frame.png'),
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
