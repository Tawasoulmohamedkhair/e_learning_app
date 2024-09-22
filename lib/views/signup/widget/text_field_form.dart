import 'package:e_learning_app/Theme/fontstyle.dart';
import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

Widget textformfiled(Image img, title) {
  return Container(
    width: 331.px,
    height: 53.px,
    child: TextFormField(
      decoration: InputDecoration(
        filled: true,
        fillColor: Colors.white,
        prefixIcon: img,
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(50)),
        labelText: title,
        labelStyle: fontsize15,
      ),
    ),
  );
}
