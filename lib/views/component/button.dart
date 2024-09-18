import 'package:e_learning_app/Theme/colors.dart';
import 'package:e_learning_app/Theme/fontstyle.dart';
import 'package:e_learning_app/Theme/style.dart';
import 'package:flutter/material.dart';

Widget ButtonScreen(String text1, {required Null Function() onTap}) {
  return InkWell(
    onTap: onTap,
    child: Container(
      padding: const EdgeInsets.symmetric(horizontal: 120, vertical: 15),
      width: 400,
      height: 60,
      decoration: BoxDecoration(
        color: bluecolor,
        borderRadius: borderradius50,
      ),
      child: Text(
        text1,
        style: fontsize18w500,
      ),
    ),
  );
}
