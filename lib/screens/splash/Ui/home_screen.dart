import 'package:e_learning_app/Theme/colors.dart';
import 'package:e_learning_app/screens/splash/Ui/splashscreen_two.dart';
import 'package:flutter/material.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:step_progress_indicator/step_progress_indicator.dart';

class SplashOnlineLearning extends StatelessWidget {
  const SplashOnlineLearning({super.key});

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Lavender,
        ),
        body: SingleChildScrollView(
          child: Container(
            width: width,
            height: height,
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
                        width: 56,
                        height: 52,
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
                        width: 52,
                        height: 52,
                        decoration: BoxDecoration(
                            color: RoyalOrange,
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
                          height: 500,
                          decoration: const BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(80),
                                topRight: Radius.circular(80)),
                          ),
                          child: Column(
                            children: [
                              const SizedBox(
                                height: 20,
                              ),
                              Text('Online Learning\nPlatform',
                                  textAlign: TextAlign.center,
                                  style: GoogleFonts.dmSans(
                                      color: blackcolor,
                                      fontSize: 25,
                                      fontWeight: FontWeight.w500)),
                              Text(
                                textAlign: TextAlign.center,
                                'A handful of model sentence structures,\n too generate Lorem which looks reason\n able.',
                                style: GoogleFonts.dmSans(
                                  fontSize: 15,
                                  fontWeight: FontWeight.w500,
                                  color: blackcolor,
                                ),
                              ),
                              const SizedBox(
                                height: 60,
                              ),
                              CircularStepProgressIndicator(
                                totalSteps: 100,
                                currentStep: 20,
                                stepSize: 2,
                                selectedColor: bluecolor,
                                unselectedColor: Lavender,
                                padding: 0,
                                width: 71,
                                height: 71,
                                selectedStepSize: 2,
                                roundedCap: (_, __) => true,
                                child: TextButton(
                                  onPressed: () {
                                    Navigator.pushReplacement(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                const SplashScreenSchedule()));
                                  },
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
                            color: PhilippineGray,
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
                              color: RoyalOrange,
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
      ),
    );
  }
}
