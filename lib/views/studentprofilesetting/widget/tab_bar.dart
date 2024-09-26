import 'package:e_learning_app/Theme/colors.dart';
import 'package:flutter/material.dart';

Widget TabBarItem(String text1, String text2, String text3, String text4,
    String text5, String text6) {
  return Material(
    child: DefaultTabController(
      initialIndex: text1 == "Profile" ? 0 : 1,
      length: 3,
      child: Column(
        children: [
          Container(
            //height: 200,
            padding: EdgeInsets.only(left: 30, right: 30),
            color: lavender,
            child: TabBar(
              indicatorSize: TabBarIndicatorSize.tab,
              indicatorColor: bluecolor,
              labelColor: blackcolor,
              tabs: [
                Tab(
                  child: Column(
                    children: [
                      Text(text1),
                      Text(text2),
                    ],
                  ),
                ),
                Tab(
                  child: Column(
                    children: [
                      Text(text3),
                      Text(text4),
                    ],
                  ),
                ),
                Tab(
                  child: Column(
                    children: [
                      Text(text5),
                      Text(text6),
                    ],
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    ),
  );
}
