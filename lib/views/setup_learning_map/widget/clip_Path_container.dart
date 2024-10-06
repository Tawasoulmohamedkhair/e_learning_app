import 'package:e_learning_app/Theme/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ClipPathContainer extends StatelessWidget {
  const ClipPathContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return ClipPath(
      clipper: RoundedDiagonalPathClipper(),
      child: Container(
        padding: const EdgeInsets.only(left: 100),
        width: 327.w,
        height: 143.h,
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(16.0),
          ),
          color: AppColor.fawn,
        ),
      ),
    );
  }
}
