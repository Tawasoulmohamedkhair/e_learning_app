import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

Widget buildStatCard(String title, String value, Image img, Color color) {
  return Container(
    padding: const EdgeInsets.only(top: 5, left: 5),
    width: 90.w,
    height: 150.h,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(14),
      color: color,
    ),
    child: Column(
      children: [
        img,
        const SizedBox(height: 10),
        Text(value,
            style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
        const SizedBox(height: 5),
        Text(title),
      ],
    ),
  );
}
