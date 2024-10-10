import 'package:e_learning_app/Theme/colors.dart';
import 'package:e_learning_app/Theme/fontstyle.dart';
import 'package:e_learning_app/Theme/style.dart';
import 'package:e_learning_app/views/component/button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

//the screen of overview the second section
Widget overviewscreen() {
  return Material(
    color: AppColor.lavender,
    child: DefaultTabController(
      length: 2,
      child: Container(
        padding: const EdgeInsets.only(left: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TabBar(
                indicatorSize: TabBarIndicatorSize.tab,
                indicatorColor: AppColor.bluecolor,
                labelColor: AppColor.blackcolor,
                tabs: [
                  Tab(
                    child: Text('Overview', style: AppFont.fontsize21w500),
                  ),
                  Tab(
                    child: Text(
                      'Lessons',
                      style: AppFont.fontsize12w400,
                    ),
                  ),
                ]),
            SizedBox(
              child: sizeboxs,
            ),
            Text(
              'Introduction',
              style: AppFont.fontsize15,
            ),
            SizedBox(
              height: 30.h,
            ),
            Container(
              width: 400.w,
              height: 52.h,
              color: AppColor.lavender,
              child: Text(
                'Ipsum quam imperdiet mollis massa bibendum odio vitae in\n  vehicula augue ullamcorper eget a ultrices amet amet, arcu at \n sem et egestassaf a  facilisi a, diam integer velit, sed gravida\n sed eu',
                style: AppFont.fontsize12w400,
              ),
            ),
            SizedBox(
              child: sizeboxs,
            ),
            Container(
              color: AppColor.lavender,
              child: Text(
                'Tllamcorper eget a ultrices amet amet, arcu at sem et\n egestassaf a  facilisi a, diam integer velit, sed gravida sed eu',
                style: AppFont.fontsize12w400,
              ),
            ),
            SizedBox(
              height: 60.h,
            ),
            ButtonScreen(
              onTap: () {},
              'See more',
                AppFont.fontsize18w500,
                AppColor.bluecolor,
                width: 335.w,
                height: 60.h
            ),
          ],
        ),
      ),
    ),
  );
}
