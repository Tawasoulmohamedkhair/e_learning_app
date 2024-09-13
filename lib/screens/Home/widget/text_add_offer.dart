import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

Widget List_add_offer(Image img, String text) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    crossAxisAlignment: CrossAxisAlignment.center,
    children: [
      img,
      Text(
        text,
        style: GoogleFonts.dmSans(
            fontSize: 12, fontWeight: FontWeight.w400, color: Colors.white),
      ),
    ],
  );
}
