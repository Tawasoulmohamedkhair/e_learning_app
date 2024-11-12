import 'package:e_learning_app/Theme/assets_imge.dart';
import 'package:e_learning_app/Theme/colors.dart';
import 'package:e_learning_app/Theme/fontstyle.dart';
import 'package:e_learning_app/controller/onboarding/onboarding_controller.dart';
import 'package:e_learning_app/model/data/onboarding_list.dart';
import 'package:e_learning_app/views/Onboarding/widget/circleindector.dart';
import 'package:e_learning_app/views/component/splashand_onboarding_screen_content.dart';
import 'package:flutter/material.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class OnboardingHomeScreen extends GetView<OnboardingController> {
  OnboardingHomeScreen({super.key});

  @override
  final controller = Get.put(OnboardingController());
  @override
  Widget build(BuildContext context) {
    Get.put(OnboardingController());

    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
          child: Container(
              width: double.infinity,
              height: 800.h,
              padding: const EdgeInsets.only(top: 60),
              decoration: BoxDecoration(
                color: AppColor.lavender,
                borderRadius: BorderRadius.circular(20),
              ),
              child: PageView.builder(
                  itemCount: onBoardingList.length,
                  onPageChanged: (value) {
                    controller.setPage(value);
                  },
                  itemBuilder: (context, index) {
                    return SingleChildScrollView(
                      child: Column(
                        children: [
                          Container(
                            width: double.infinity,
                            //   height: 200,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Align(
                                    alignment: Alignment.topLeft,
                                    child: SplashContentScreen(
                                      color: AppColor.philippineGray,
                                      img1: Image.asset(
                                        AssetsImages.circle,
                                      ),
                                    )),
                                Align(
                                  alignment: Alignment.topRight,
                                  child: SplashContentScreen(
                                    color: AppColor.bluecolor,
                                    img1: Image.asset(AssetsImages.contactcard),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            width: 200,
                            height: 200.h,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage(onBoardingList[index].image),
                              ),
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              SplashContentScreen(
                                color: AppColor.bluecolor,
                                img1: Image.asset(AssetsImages.cap),
                              ),
                              Container(
                                width: 52,
                                height: 52,
                                decoration: BoxDecoration(
                                    color: AppColor.royalorange,
                                    borderRadius: BorderRadius.circular(18)),
                                child: Container(
                                  child: Image.asset(AssetsImages.frame),
                                ),
                              ),
                            ],
                          ),
                          ClipPath(
                            clipper: OvalTopBorderClipper(),
                            child: Container(
                              padding: const EdgeInsets.only(top: 90),
                              width: double.infinity,
                              height: 700,
                              decoration: const BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(80),
                                    topRight: Radius.circular(80)),
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Text(onBoardingList[index].title,
                                      style: AppFont.fontsize24),
                                  Text(onBoardingList[index].description),
                                  CircleIndector(),
                                  const SizedBox(
                                    height: 20,
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    );
                  }))),
    );
  }
}