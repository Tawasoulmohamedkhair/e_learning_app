import 'package:e_learning_app/Theme/fontstyle.dart';
import 'package:flutter/material.dart';

Widget HelpandSupportSection(String title, Icon icon) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Text(
        title,
        style: AppFont.fontweghit400size18,
      ),
      icon,
    ],
  );
}
