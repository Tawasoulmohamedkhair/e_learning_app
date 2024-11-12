import 'package:e_learning_app/Theme/fontstyle.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SocialMediaLink extends StatelessWidget {
  const SocialMediaLink(this.img, this.color, this.radius, this.width2,
      this.width, this.height,
      {required this.title, super.key});
  final Image img;

  final String title;
  final bool showimage = true;
  final Color color;
  final double radius;
  final double width2;
  final double width;
  final double height;

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.only(left: 20),
        width: width.w,
        height: height.h,
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(radius.r),
          border: Border.all(width: width2),
        ),
        child: Row(
          children: [
            img,
            SizedBox(
              width: 10.w,
            ),
            Text(title, style: AppFont.fontsize18),
          ],
        ));
  }
}
