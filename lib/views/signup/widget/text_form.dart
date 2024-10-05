import 'package:e_learning_app/Theme/colors.dart';
import 'package:e_learning_app/Theme/fontstyle.dart';
import 'package:flutter/material.dart';

Widget textformsignup(Icon icon, String title) {
  return TextFormField(
    obscureText: true,
    decoration: InputDecoration(
      focusColor: blackcolor,
      focusedBorder:
          OutlineInputBorder(borderRadius: BorderRadius.circular(50)),
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(50.0),
      ),
      labelText: title,
      labelStyle: fontsizew500,
      prefixIcon: icon,
    ),
  );
}
