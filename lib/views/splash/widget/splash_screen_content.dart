import 'package:flutter/material.dart';

class SplashContentScreen extends StatelessWidget {
  const SplashContentScreen({
    required this.color,
    required this.img1,
    super.key,
  });

  final Image img1;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 52,
      height: 52,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(18),
      ),
      child: Container(child: img1),
    );
  }
}
