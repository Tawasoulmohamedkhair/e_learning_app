import 'package:e_learning_app/Theme/colors.dart';
import 'package:e_learning_app/views/splash/widget/clip_path_splash_screen.dart';
import 'package:e_learning_app/views/splash/widget/splash_screen_content.dart';
import 'package:e_learning_app/views/splash/Ui/splash_screen_explore.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class FindCourseScreen extends StatelessWidget {
  const FindCourseScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      
      body: SingleChildScrollView(
        child: Container(
          decoration: const BoxDecoration(
            color: lavender,
          ),
          child: Column(children: [
            Stack(
              children: [
                Container(
                  width: width,
                  height: 360,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('assets/images/find.png')),
                  ),
                  child: Align(
                      alignment: const Alignment(.600, -.50),
                      child: SplashContentScreen(
                        color: philippineGray,
                        img1: Image.asset('assets/images/circle.png'),
                      )),
                ),
                Positioned(
                  top: 5,
                  bottom: 50,
                  left: 100,
                  child: Align(
                    alignment: const Alignment(-.400, -.700),
                    child: SplashContentScreen(
                      color: royalorange,
                      img1: Image.asset('assets/images/Frame.png'),
                    ),
                  ),
                ),
                Positioned(
                  top: 300,
                  left: 30,
                  child: Align(
                      alignment: const Alignment(.900, -.400),
                      child: SplashContentScreen(
                        color: bluecolor,
                        img1: Image.asset('assets/images/contact-card.png'),
                      )),
                ),
                Positioned(
                  top: 250,
                  right: 30,
                  child: Align(
                      alignment: const Alignment(1, -.80),
                      child: SplashContentScreen(
                        color: royalorange,
                        img1: Image.asset('assets/images/healthicons.png'),
                      )),
                ),
              ],
            ),
            Stack(children: [
              Positioned(
                child: Stack(children: [
                  ClippathSplashScreen(
                    'Ready to find \n a Course',
                    'A handful of model sentence structures,\n too generate Lorem which looks reason\n able.',
                    70,
                    onTap: () => Get.to(() => SplashScreenExplore()),
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
