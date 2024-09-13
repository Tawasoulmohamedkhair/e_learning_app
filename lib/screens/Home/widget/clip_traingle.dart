import 'package:flutter/cupertino.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';

class ClipPathRectangle extends StatelessWidget {
  const ClipPathRectangle({super.key});

  @override
  Widget build(BuildContext context) {
    return ClipPath(
      clipper: HexagonalClipper(reverse: true),
      child: Container(
        height: 220,
        //color: Colors.orangeAccent,
        child: Center(child: Text("HexagonalClipper(reverse: true)")),
      ),
    );
  }
}
