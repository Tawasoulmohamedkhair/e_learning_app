import 'package:e_learning_app/Theme/fontstyle.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

Widget studentinformation(void Function()? onTap, Icon icon, Image img1,
    String title1, String title2, Image img2, Image img3, Image img4) {
  return Container(
    height: 300.h,
    child: Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            InkWell(onTap: onTap, child: icon),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
                width: 120.w,
                height: 120.h,
                child: CircleAvatar(
                  child: img1,
                )),
          ],
        ),
        Container(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              title1,
              style: fontsize25,
            ),
            Text(
              title2,
              style: fontsize13,
            ),
          ],
        )),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            img2,
            SizedBox(
              width: 10.w,
            ),
            img3,
            SizedBox(
              width: 10.w,
            ),
            img4
          ],
        ),
      ],
    ),
  );
}
