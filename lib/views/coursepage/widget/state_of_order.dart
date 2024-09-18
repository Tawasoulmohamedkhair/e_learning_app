import 'package:e_learning_app/Theme/fontstyle.dart';
import 'package:flutter/material.dart';

Widget stateoforder(
  Image img,
  String title,
  Color color,
) {
  return Row(
    children: [
      Container(
        width: 39,
        height: 39,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: color,
        ),
        child: img,
      ),
      const SizedBox(
        width: 10,
      ),
      Text(
        title,
        style: fontsize19w500,
      ),
    ],
  );
}
