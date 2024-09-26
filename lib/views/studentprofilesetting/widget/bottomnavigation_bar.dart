import 'package:e_learning_app/Theme/colors.dart';
import 'package:flutter/material.dart';

Widget BottomNavigationbarScreen() {
  return BottomNavigationBar(
    // currentIndex: selectedIndex,
    selectedItemColor: bluecolor,
    unselectedItemColor: blackcolor,
    items: <BottomNavigationBarItem>[
      BottomNavigationBarItem(
        icon: Icon(Icons.home),
        label: '',
      ),
      BottomNavigationBarItem(
        icon: Icon(Icons.search),
        label: '',
      ),
      BottomNavigationBarItem(
        icon: Icon(Icons.bookmark_outline),
        label: '',
      ),
      BottomNavigationBarItem(
        icon: Row(
          children: [
            Container(
                width: 40,
                height: 40,
                decoration:
                    BoxDecoration(color: bluecolor, shape: BoxShape.circle),
                child: Icon(Icons.person)),
            SizedBox(
              width: 10,
            ),
            Text('Profile'),
          ],
        ),
        label: '',
      ),
    ],
  );
}
