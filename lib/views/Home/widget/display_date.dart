import 'package:e_learning_app/Theme/colors.dart';
import 'package:flutter/material.dart';

Widget displaydate() {
  return Container(
    width: 63,
    height: 73,
    decoration: BoxDecoration(
        color: bluecolor, borderRadius: BorderRadius.circular(16)),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          '23',
          textAlign: TextAlign.center,
        ),
        Text('Sun'),
      ],
    ),
  );
}
