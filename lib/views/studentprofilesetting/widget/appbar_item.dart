import 'package:flutter/material.dart';

class AppBarItem extends StatelessWidget {
  AppBarItem(this.icon, {required this.icon1, super.key});
  Icon icon;
  Icon icon1;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        icon,
        icon1,
      ],
    );
  }
}
