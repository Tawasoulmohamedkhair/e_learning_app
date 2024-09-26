import 'package:e_learning_app/Theme/fontstyle.dart';
import 'package:flutter/material.dart';

class TextFormeSetting extends StatelessWidget {
  late String title;
  Icon? icon;

  bool obscureText = false;

  TextFormeSetting(this.icon, {required this.title, super.key});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
        obscureText: obscureText,
        decoration: InputDecoration(
          labelText: title,
          labelStyle: fontsizew500,
          suffixIcon: Builder(
            builder: (BuildContext context) {
              if (icon != null) {
                return icon!;
              } else {
                return const SizedBox.shrink();
              }
            },
          ),
        ));
  }
}
