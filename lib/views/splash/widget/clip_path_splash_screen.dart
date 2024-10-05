import 'package:e_learning_app/Theme/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:step_progress_indicator/step_progress_indicator.dart';

class ClippathSplashScreen extends StatelessWidget {
  const ClippathSplashScreen(this.text1, this.text2, this.currentStep,
      {required this.onTap, super.key});
  final String text1;
  final String text2;
  final int currentStep;
  final Function() onTap;

  @override
  Widget build(BuildContext context) {
    return ClipPath(
        clipper: OvalTopBorderClipper(),
        child: Container(
          width: double.infinity,
          padding: const EdgeInsets.only(top: 90),
          height: 500,
          decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(80), topRight: Radius.circular(80)),
          ),
          child: Column(
            children: [
              const SizedBox(
                height: 20,
              ),
              Text(
                text1,
                textAlign: TextAlign.center,
                style: GoogleFonts.dmSans(
                    color: blackcolor,
                    fontSize: 25,
                    fontWeight: FontWeight.w500),
              ),
              Text(
                textAlign: TextAlign.center,
                text2,
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
                currentStep: currentStep,
                stepSize: 2,
                selectedColor: bluecolor.withOpacity(0.5),
                unselectedColor: lavender,
                padding: 0,
                width: 71,
                height: 71,
                selectedStepSize: 2,
                roundedCap: (_, __) => true,
                child: GestureDetector(
                  onTap: onTap,
                  child: const Icon(
                      color: bluecolor, size: 44, Icons.arrow_circle_right),
                ),
              ),
            ],
          ),
        ));
  }
}
