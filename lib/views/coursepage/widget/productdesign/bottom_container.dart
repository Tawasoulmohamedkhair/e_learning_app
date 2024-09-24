import 'package:e_learning_app/Theme/colors.dart';
import 'package:flutter/material.dart';

//the last section of product screen include BuyNow button
Widget bottomcontainer(
  Color color2, {
  required Color color,
  required String text1,
}) {
  return Container(
    padding: EdgeInsets.only(left: 20),
    height: 89,
    decoration:
        BoxDecoration(color: lavender, borderRadius: BorderRadius.circular(16)),
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
              child: Icon(color: bluecolor, Icons.star_outline),
            ),
            SizedBox(
              width: 80,
            ),
            Container(
              width: 236,
              height: 50,
              decoration: BoxDecoration(
                color: color,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Center(
                  child: Text(
                text1,
                style: TextStyle(color: color2),
              )),
            ),
          ],
        ),
      ],
    ),
  );
}
