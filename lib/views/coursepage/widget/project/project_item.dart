import 'package:flutter/material.dart';
//this widgets for displaying the project of students 
//displaying two image in one row
Widget projectitem(Image img, Image img2) {
  return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        img,
        const SizedBox(
          width: 20,
        ),
        img2,
      ]);
}
