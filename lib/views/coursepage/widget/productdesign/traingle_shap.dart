import 'package:clippy_flutter/clippy_flutter.dart';
import 'package:e_learning_app/Theme/colors.dart';
import 'package:e_learning_app/Theme/fontstyle.dart';
import 'package:flutter/material.dart';

//this for the triangle in the productdesign screen include the text BESTSELLER
Widget trainglepoint() {
  return Point(
    triangleHeight: 15.0,
    edge: Edge.RIGHT,
    child: Container(
      color: bluecolor,
      width: 100.0,
      height: 30,
      child: Center(
          child: Text(
        'BESTSELLER',
        style: fontsize12,
      )),
    ),
  );
}
