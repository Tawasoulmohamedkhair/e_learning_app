import 'package:flutter/material.dart';

Widget studentinformation(void Function()? onTap, Icon icon, Image img1,
    String title1, String title2, Image img2, Image img3, Image img4) {
  return Container(
    height: 300,
    child: Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            InkWell(onTap: onTap, child: icon),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
                width: 120,
                height: 120,
                child: CircleAvatar(
                  child: img1,
                )),
          ],
        ),
        Container(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(title1),
            Text(title2),
          ],
        )),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            img2,
            SizedBox(
              width: 10,
            ),
            img3,
            SizedBox(
              width: 10,
            ),
            img4
          ],
        ),
      ],
    ),
  );
}
