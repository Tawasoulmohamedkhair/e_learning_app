import 'package:e_learning_app/Theme/colors.dart';
import 'package:e_learning_app/Theme/fontstyle.dart';
import 'package:flutter/material.dart';

Widget coursedetails(
  final IconData icon1, {
  required String text1,
  required String text2,
  required String text3,
  required String text4,
  required Color color,
  img,
}) {
  return Container(
    padding: EdgeInsets.only(left: 20, right: 20),
    child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
      Text(
        text1,
        style: fontsize24,
      ),
      SizedBox(
        width: 60,
      ),
      Column(
        children: [
          Text(
            text2,
            style: fontsize12w500,
          ),
          SizedBox(
            height: 20,
          ),
          Row(children: [
            Text(
              text3,
              style: fontsize15,
            ),
            SizedBox(
              width: 20,
            ),
            Text(
              text4,
              style: fontsize15,
            ),
            SizedBox(
              width: 20,
            ),
            if (text1 == '01')
              Container(
                  width: 15,
                  height: 15,
                  decoration:
                      BoxDecoration(color: bluecolor, shape: BoxShape.circle),
                  child: (text1 == '01') ? Icon(size: 10, icon1) : null)
          ]),
        ],
      ),
      SizedBox(
        width: 120,
      ),
      Container(
        width: 44,
        height: 44,
        decoration: BoxDecoration(color: color, shape: BoxShape.circle),
        child: img,
      ),
    ]),
  );
}
