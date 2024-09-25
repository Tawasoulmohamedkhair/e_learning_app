import 'package:e_learning_app/Theme/fontstyle.dart';
import 'package:flutter/material.dart';

Widget itemofbottomnavigationbar(
    VoidCallback onPressed, String text, IconData icon) {
  return MaterialButton(
    minWidth: 40,
    onPressed: onPressed,
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(color: Colors.white, icon),
        Text(
          text,
          style: fontsize10,
        ),
      ],
    ),
  );
}
/*


*/ 
//
//