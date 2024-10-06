import 'package:flutter/material.dart';
//this widget for displaying the white container of feedback
// and displaying icon with text and another text 
Widget feedbackcontainer(Image img, String text1, String text2) {
  return Container(
    padding: const EdgeInsets.only(left: 5, top: 20),
    width: 160,
    height: 90,
    decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20), color: Colors.white),
    child: Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            img,
            const SizedBox(
              width: 5,
            ),
            Text(text1),
          ],
        ),
        Text(text2),
      ],
    ),
  );
}
