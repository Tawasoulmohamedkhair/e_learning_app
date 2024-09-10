import 'package:e_learning_app/Theme/colors.dart';
import 'package:e_learning_app/Theme/widget/clip_path_widget.dart';
import 'package:e_learning_app/Theme/widget/splash_screen_content.dart';
import 'package:e_learning_app/screens/splash_screen_explore.dart';
import 'package:flutter/material.dart';

class FindCourseScreen extends StatelessWidget {
  const FindCourseScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: lightbluecolor,
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
                  width: width,
                  height: 360,
                  decoration: const BoxDecoration(
                    image: const DecorationImage(
                        image: AssetImage('assets/images/find.png')),
                  ),
                  child: Align(
                      alignment: const Alignment(.600, -.50),
                      child: SplashContentScreen(
                        color: greycolor,
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
                      color: orangecolor,
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
                        color: orangecolor,
                        img1: Image.asset('assets/images/healthicons.png'),
                      )),
                ),
              ],
            ),
            Stack(children: [
              Positioned(
                child: Stack(children: [
                  ClippathWidget(
                    'Ready to find \n a Course',
                    'A handful of model sentence structures,\n too generate Lorem which looks reason\n able.',
                    70,
                    onTap: () {
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                            builder: (context) => SplashScreenExplore()),
                      );
                    },
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
                                                         
