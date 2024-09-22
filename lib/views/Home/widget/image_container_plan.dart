import 'package:e_learning_app/Theme/colors.dart';
import 'package:e_learning_app/Theme/fontstyle.dart';
import 'package:e_learning_app/views/Home/widget/clip_Path_container.dart';
import 'package:flutter/material.dart';

class ImageContainer extends StatelessWidget {
  const ImageContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Stack(
        children: [
          Positioned(
              child: Container(
            width: 380,
            height: 143,
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(50.0)),
              color: peachPuff,
            ),
            child: const ClipPathContainer(),
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
                    style: fontsize60),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
