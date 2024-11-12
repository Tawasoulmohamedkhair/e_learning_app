import 'package:e_learning_app/Theme/fontstyle.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

Widget appbarsection(

  IconData icon,
  VoidCallback onPressed,


  String title,
  Image img,
  VoidCallback onTap,
) {
  return Container(
      height: 26.h,
      padding: const EdgeInsets.only(left: 20, right: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          IconButton(onPressed: onPressed,icon: Icon(icon)),
          Text(
            title,
            style: AppFont.fontsize18,
          ),
          InkWell(onTap: onTap, child: img),
        ],
      ));
}
