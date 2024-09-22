import 'package:e_learning_app/Theme/fontstyle.dart';
import 'package:e_learning_app/Theme/style.dart';
import 'package:flutter/material.dart';

Widget ButtonScreen(String text1, Color color,
    {required Null Function() onTap}) {
  return InkWell(
    onTap: onTap,
    child: Container(
      padding: const EdgeInsets.symmetric(horizontal: 120, vertical: 15),
      width: 410,
      height: 60,
      decoration: BoxDecoration(
        color: color,
        borderRadius: borderradius50,
      ),
      child: Text(
        textAlign: TextAlign.center,
        text1,
        style: fontsize18w500,
      ),
    ),
  );
}
