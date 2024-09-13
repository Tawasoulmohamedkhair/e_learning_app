import 'package:e_learning_app/Theme/colors.dart';
import 'package:e_learning_app/screens/Home/widget/clip_Path_container.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ImageContainer extends StatelessWidget {
  const ImageContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Stack(
        children: [
          Positioned(
              child: Container(
            width: 327,
            height: 143,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(50.0)),
              color: PeachPuff,
            ),
            child: ClipPathContainer(),
          )),
          Row(
            children: [
              Image.asset(
                'assets/images/home.png',
                width: 141,
                height: 140,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Text('-50%',
                    style: GoogleFonts.dmSans(
                        color: blackcolor,
                        fontSize: 60,
                        fontWeight: FontWeight.w700)),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
