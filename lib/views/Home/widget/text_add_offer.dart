import 'package:e_learning_app/Theme/fontstyle.dart';
import 'package:flutter/material.dart';

Widget List_add_offer(Image img, String text) {
  return Container(
    width: 130,
    height: 18,
    child: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        img,
        Text(text, style: fontsizew400),
      ],
    ),
  );
}
