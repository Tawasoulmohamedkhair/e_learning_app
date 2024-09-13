import 'package:e_learning_app/Theme/colors.dart';
import 'package:e_learning_app/screens/Home/Ui/reminder_screen.dart';
import 'package:e_learning_app/screens/splash/widget/clip_path_widget.dart';
import 'package:e_learning_app/screens/splash/widget/splash_screen_content.dart';
import 'package:flutter/material.dart';

class SplashScreenExplore extends StatelessWidget {
  const SplashScreenExplore({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Lavender,
      ),
      body: SingleChildScrollView(
        child: Container(
          decoration: const BoxDecoration(
            color: Lavender,
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
                    alignment: Alignment(-.400, -.700),
                    child: SplashContentScreen(
                        img1: Image.asset('assets/images/healthicons.png'),
                        color: RoyalOrange),
                  ),
                ),
                Positioned(
                  top: 300,
                  left: 30,
                  child: Align(
                      alignment: const Alignment(.900, -.400),
                      child: SplashContentScreen(
                        color: PhilippineGray,
                        img1: Image.asset('assets/images/circle.png'),
                      )),
                ),
                Positioned(
                  top: 250,
                  right: 30,
                  child: Align(
                      alignment: const Alignment(1, -.80),
                      child: SplashContentScreen(
                        color: RoyalOrange,
                        img1: Image.asset('assets/images/Frame.png'),
                      )),
                ),
              ],
            ),
            Stack(children: [
              Positioned(
                child: Stack(children: [
                  ClippathWidget(
                    'Explore it \nToday!',
                    'A handful of model sentence structures,\n too generate Lorem which looks reason\n able.',
                    100,
                    onTap: () {
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                            builder: (context) => Learning_Reminder_Screen()),
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
