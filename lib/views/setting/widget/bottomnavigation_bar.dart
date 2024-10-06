import 'package:e_learning_app/Theme/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

Widget BottomNavigationbarScreen() {
  return BottomNavigationBar(
    // currentIndex: selectedIndex,
    selectedItemColor: AppColor.bluecolor,
    unselectedItemColor: AppColor.blackcolor,
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
                width: 30.w,
                height: 40.h,
                decoration:
                    BoxDecoration(
                    color: AppColor.bluecolor, shape: BoxShape.circle),
                child: Icon(Icons.person)),
            SizedBox(
              width: 10.w,
            ),
            Text('Profile'),
          ],
        ),
        label: '',
      ),
    ],
  );
}
