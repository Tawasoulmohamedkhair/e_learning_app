import 'package:e_learning_app/Theme/fontstyle.dart';
import 'package:flutter/material.dart';

//this widgets for displaying the information of videos
//likethe duration of videos and the numberof lessons  etc..
Widget subdetailes(
  Image img,
  String title1,
) {
  return Row(
    children: [
      img,
      const SizedBox(
        width: 10,
      ),
      Text(title1, style: fontsize12w400),
    ],
  );
}
