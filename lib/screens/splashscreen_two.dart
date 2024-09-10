import 'package:e_learning_app/Theme/colors.dart';
import 'package:e_learning_app/Theme/widget/clip_path_widget.dart';
import 'package:e_learning_app/Theme/widget/splash_screen_content.dart';
import 'package:e_learning_app/screens/splash_screen_find_course.dart';
import 'package:flutter/material.dart';

class SplashScreenSchedule extends StatelessWidget {
  const SplashScreenSchedule({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor:lightbluecolor,
      ),
      body: SingleChildScrollView(
        child: Container(
          decoration: const BoxDecoration(
            color: lightbluecolor,
          ),
          child: Column(children: [
            Stack(
              children: [
                Container(
                  width: double.infinity,
                  height: 360,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage(
                          'assets/images/schedule.png',
                        )),
                  ),
                  child: Column(
                    children: [
                      Align(
                          alignment: const Alignment(.900, .100),
                          child: SplashContentScreen(
                            color: greycolor,
                            img1: Image.asset(
                              'assets/images/circle.png',
                            ),
                          )
                      ),
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
                      color: bluecolor,
                      img1: Image.asset('assets/images/contact-card.png'),
                    ),
                  ),
                ),
              ],
            ),
            Stack(children: [
              Positioned(
                child: Stack(children: [
                  ClippathWidget(
                    'Learn on your \n Schedule',
                    'A handful of model sentence structures,\n too generate Lorem which looks reason\n able.',
                    50,
                    onTap: () {
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                            builder: (context) => FindCourseScreen()),
                      );
                    },
                  ),
                  Positioned(
                    left: 30,
                    child: Align(
                      alignment: const Alignment(1, -.80),
                      child: SplashContentScreen(
                        color: bluecolor,
                        img1: Image.asset('assets/images/cap.png'),
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
                            color:orangecolor,
                            borderRadius: BorderRadius.circular(18)),
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
    );
  }
}
