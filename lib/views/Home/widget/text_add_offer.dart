import 'package:e_learning_app/Theme/fontstyle.dart';
import 'package:flutter/material.dart';

Widget List_add_offer(Image img, String text) {
  return Container(
    width: 150,
    height: 18,
    child: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Expanded(child: img),
        Text(text, style: fontsizew400),
      ],
    ),
  );
}
