import 'package:e_learning_app/Theme/fontstyle.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SocialMediaLink extends StatelessWidget {
  SocialMediaLink(this.img, this.color, this.radius, this.width2,
      double this.width, double this.height,
      {required this.title, super.key});
  Image img;

  String title;
  bool showimage = true;
  Color color;
  double radius;
  double width2;
  double width;
  double height;

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.only(left: 20),
        width: width.sp,
        height: height.sp,
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(radius.r),
          border: Border.all(width: width2),
        ),
        child: Row(
          children: [
            img,
            SizedBox(
              width: 10.sp,
            ),
            Text(title, style: fontsize18),
          ],
        ));
  }
}
