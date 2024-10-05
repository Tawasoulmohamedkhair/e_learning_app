import 'package:e_learning_app/Theme/fontstyle.dart';
import 'package:flutter/material.dart';

Widget appbarsection(
  IconData icon,
  String title,
  Image img,
  VoidCallback onTap,
) {
  return Container(
      height: 26,
      padding: const EdgeInsets.only(left: 20, right: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Icon(icon),
          Text(
            title,
            style: fontsize18,
          ),
          InkWell(onTap: onTap, child: img),
        ],
      ));
}
