import 'package:e_learning_app/Theme/colors.dart';
import 'package:e_learning_app/Theme/fontstyle.dart';
import 'package:e_learning_app/views/setup_learning_map/widget/clip_Path_container.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ImageContainerDiscount extends StatelessWidget {
  const ImageContainerDiscount({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Stack(
        children: [
          Positioned(
              child: Container(
            width: 380.w,
            height: 143.h,
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(50.0)),
              color: AppColor.peachPuff,
            ),
            child: const ClipPathContainer(),
          )),
          Row(
            children: [
              Image.asset(
                'assets/images/home.png',
                width: 141.w,
                height: 140.h,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Text('-50%',
                    style: AppFont.fontsize60),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
