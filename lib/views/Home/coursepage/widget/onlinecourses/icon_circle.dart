import 'package:flutter/material.dart';
//this for the small white  circle of the list of courses in OnlineCoursesScreen

Widget circlecontainer(Image img) {
  return Container(
      width: 33,
      height: 33,
      decoration: BoxDecoration(shape: BoxShape.circle, color: Colors.white),
      child: Center(child: img));
}
