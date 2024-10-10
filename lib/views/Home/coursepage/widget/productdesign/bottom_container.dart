import 'package:e_learning_app/Theme/colors.dart';
import 'package:flutter/material.dart';

//the last section of product screen include BuyNow button
Widget bottomcontainer(
  Color color2,
  Color color1,
  TextStyle style,
   {
  required Color color,
  
  required String text1,

}) {
  return Container(
    padding: const EdgeInsets.only(left: 20),
    height: 89,
    decoration:
        BoxDecoration(color: color1, borderRadius: BorderRadius.circular(16)),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            Container(
              width: 89,
              height: 50,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
              ),
              child: const Icon(color: AppColor.bluecolor, Icons.star_outline),
            ),
            const SizedBox(
              width: 80,
            ),
            Container(
              width: 236,
              height: 50,
              decoration: BoxDecoration(
                color: color2,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Center(
                  child: Text(
                text1,
                style: style,
              )),
            ),
          ],
        ),
      ],
    ),
  );
}
