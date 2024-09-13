import 'package:e_learning_app/Theme/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';

class ClipPathContainer extends StatelessWidget {
  const ClipPathContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return ClipPath(
      clipper: RoundedDiagonalPathClipper(),
      child: Container(
        padding: EdgeInsets.only(left: 100),
        width: 327,
        height: 143,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(50.0),
            //  topRight: Radius.circular(50),
            //  bottomLeft: Radius.circular(50),
          ),
          color: Fawn,
        ),
      ),
    );
  }
}
