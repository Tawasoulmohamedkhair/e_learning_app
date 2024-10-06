import 'dart:async';

import 'package:e_learning_app/Theme/colors.dart';
import 'package:e_learning_app/Theme/fontstyle.dart';
import 'package:e_learning_app/views/Onboarding/onboarding_home_screen.dart';
import 'package:e_learning_app/views/component/splashand_onboarding_screen_content.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(
        const Duration(seconds: 5), () => Get.to(() => OnboardingHomeScreen()));
  }

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColor.lavender,
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            color: AppColor.lavender,
            height: height,
            width: width,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Align(
                        alignment: const Alignment(-0.98, 0.30),
                        child: SplashContentScreen(
                          color: AppColor.royalorange,
                          img1: Image.asset('assets/images/Frame.png'),
                        )),
                    Container(
                      width: 300.w,
                      height: 500.h,
                      decoration: const BoxDecoration(),
                      child: Stack(children: [
                        SplashContentScreen(
                          color: AppColor.royalorange,
                          img1: Image.asset('assets/images/Vector.png'),
                        ),
                        Align(
                          alignment: const Alignment(-0.60, .40),
                          child: Text(
                            'Education\nApp',
                            textAlign: TextAlign.center,
                            style: AppFont.fontsize29,
                          ),
                        ),
                        Align(
                          alignment: const Alignment(-0.80, .80),
                          child: SplashContentScreen(
                            color: AppColor.philippineGray,
                            img1: Image.asset('assets/images/circle.png'),
                          ),
                        ),
                        Align(
                          alignment: const Alignment(1, -0.40),
                          child: SplashContentScreen(
                            color: AppColor.bluecolor,
                            img1: Image.asset('assets/images/cap.png'),
                          ),
                        ),
                        Align(
                          alignment: const Alignment(1, 1.3),
                          child: SplashContentScreen(
                            color: AppColor.bluecolor,
                            img1: Image.asset('assets/images/contact-card.png'),
                          ),
                        ),
                      ]),
                    ),
                  ],
                ),
                Align(
                  alignment: const Alignment(-.90, 0),
                  child: SplashContentScreen(
                    color: AppColor.royalorange,
                    img1: Image.asset('assets/images/healthicons.png'),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
