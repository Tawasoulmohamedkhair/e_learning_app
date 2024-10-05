import 'package:e_learning_app/Theme/colors.dart';
import 'package:e_learning_app/views/Home/Ui/reminder_screen.dart';
import 'package:e_learning_app/views/splash/widget/clip_path_splash_screen.dart';
import 'package:e_learning_app/views/splash/widget/splash_screen_content.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class SplashScreenExplore extends StatelessWidget {
  const SplashScreenExplore({super.key});

  @override
  Widget build(BuildContext context) {
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
                  width: double.infinity,
                  height: 360,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('assets/images/explore.png')),
                  ),
                  child: Align(
                    alignment: const Alignment(.600, -.900),
                    child: SplashContentScreen(
                        color: bluecolor,
                        img1: Image.asset('assets/images/cap.png')),
                  ),
                ),
                Positioned(
                  top: 60,
                  bottom: 50,
                  left: 20,
                  child: Align(
                    alignment: const Alignment(-.400, -.700),
                    child: SplashContentScreen(
                        img1: Image.asset('assets/images/healthicons.png'),
                        color: royalorange),
                  ),
                ),
                Positioned(
                  top: 300,
                  left: 30,
                  child: Align(
                      alignment: const Alignment(.900, -.400),
                      child: SplashContentScreen(
                        color: philippineGray,
                        img1: Image.asset('assets/images/circle.png'),
                      )),
                ),
                Positioned(
                  top: 250,
                  right: 30,
                  child: Align(
                      alignment: const Alignment(1, -.80),
                      child: SplashContentScreen(
                        color: royalorange,
                        img1: Image.asset('assets/images/Frame.png'),
                      )),
                ),
              ],
            ),
            Stack(children: [
              Positioned(
                child: Stack(children: [
                  ClippathSplashScreen(
                    'Explore it \nToday!',
                    'A handful of model sentence structures,\n too generate Lorem which looks reason\n able.',
                    100,
                    onTap: () => Get.to(() => Learning_Reminder_Screen()),
                  
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
