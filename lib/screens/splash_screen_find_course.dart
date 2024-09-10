import 'package:e_learning_app/Theme/colors.dart';
import 'package:e_learning_app/screens/splash_screen_explore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:step_progress_indicator/step_progress_indicator.dart';

class FindCourseScreen extends StatelessWidget {
  const FindCourseScreen({super.key});

  @override
  Widget build(BuildContext context) {
     var height = MediaQuery.of(context).size.height;
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
                  child: Positioned(
                    top: 20,
                    child: Align(
                      alignment: const Alignment(.600, -.50),
                      child: Container(
                        width: 52,
                        height: 52,
                        decoration: BoxDecoration(
                            color: greycolor,
                            borderRadius: BorderRadius.circular(18)),
                        child: Container(
                          child: Image.asset('assets/images/circle.png'),
                        ),
                      ),
                    ),
                  ),
                ),
                Positioned(
                  top: 5,
                  bottom: 50,
                  left: 100,
                  child: Align(
                    alignment: const Alignment(-.400, -.700),
                    child: Container(
                      width: 52,
                      height: 52,
                      decoration: BoxDecoration(
                          color: orangecolor,
                          borderRadius: BorderRadius.circular(18)),
                      child: Container(
                        child: Image.asset('assets/images/Frame.png'),
                      ),
                    ),
                  ),
                ),
                Positioned(
                  top: 300,
                  left: 30,
                  child: Align(
                    alignment: const Alignment(.900, -.400),
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(18),
                        color: bluecolor,
                      ),
                      width: 56,
                      height: 52,
                      child: Container(
                        child: Image.asset('assets/images/contact-card.png'),
                      ),
                    ),
                  ),
                ),
                Positioned(
                  top: 250,
                  right: 30,
                  child: Align(
                    alignment: const Alignment(1, -.80),
                    child: Container(
                      width: 52,
                      height: 52,
                      decoration: BoxDecoration(
                          color: orangecolor,
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
                            Text(
                              'Ready to find \n a Course',
                              textAlign: TextAlign.center,
                              style: GoogleFonts.dmSans(
                                  color: blackcolor,
                                  fontSize: 25,
                                  fontWeight: FontWeight.w500),
                            ),
                            Text(
                              textAlign: TextAlign.center,
                              'A handful of model sentence structures,\n too generate Lorem which looks reason\n able.',
                              style: GoogleFonts.dmSans(
                                  color: blackcolor,
                                  fontSize: 15,
                                  fontWeight: FontWeight.w500),
                            ),
                            const SizedBox(
                              height: 40,
                            ),
                            CircularStepProgressIndicator(
                              totalSteps: 100,
                              currentStep: 50,
                              stepSize: 2,
                              selectedColor:
                                  bluecolor.withOpacity(0.5),
                              unselectedColor:lightbluecolor,
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
                                            const SplashScreenExplore(),
                                      ));
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
                ]),
              )
            ])
          ]),
        ),
      ),
    );
  }
}
