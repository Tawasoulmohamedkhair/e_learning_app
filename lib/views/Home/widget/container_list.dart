import 'package:e_learning_app/Theme/colors.dart';
import 'package:e_learning_app/Theme/fontstyle.dart';
import 'package:e_learning_app/views/Home/widget/text_add_offer.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

Widget containerList(Image img, String text1, String text2, String text3,
    String text4, String text5) {
  return Container(
    width: 200,
    height: 302,
    decoration: BoxDecoration(
      border: Border.all(width: 1.px, color: Colors.white),
      color: bluecolor,
      borderRadius: BorderRadius.circular(20),
    ),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          child: RotationTransition(
            turns: const AlwaysStoppedAnimation(25),
            child: Text(text1, style: fontsize15w500),
          ),
        ),
        SizedBox(
          height: 10,
        ),
        List_add_offer(img, text2),
        SizedBox(
          height: 10,
        ),
        List_add_offer(img, text2),
        SizedBox(
          height: 10,
        ),
        List_add_offer(img, text2),
        SizedBox(
          height: 10,
        ),
        Text(
          text3,
          style: GoogleFonts.dmSans(
              color: Colors.white, fontSize: 20, fontWeight: FontWeight.w500),
        ),
        const SizedBox(
          height: 10,
        ),
        Text(text4, style: fontsize14),
        const SizedBox(
          height: 10,
        ),
        Text(text5, style: fontsize12),
      ],
    ),
  );
}
