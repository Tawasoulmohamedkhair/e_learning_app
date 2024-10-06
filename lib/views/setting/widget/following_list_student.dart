import 'package:e_learning_app/Theme/fontstyle.dart';
import 'package:e_learning_app/model/data/following_data.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class FollowingStudentListScreen extends StatelessWidget {
  const FollowingStudentListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 700.h,
      width: 700.w,
      child: ListView.builder(
          padding: EdgeInsets.only(top: 30),
          itemCount: followingList.length,
          itemBuilder: (context, index) {
            final items = followingList[index];
            return Container(
              padding: EdgeInsets.only(top: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Image.asset(
                    items.image,
                    width: 47.w,
                    height: 42.h,
                  ),
                  Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(items.title, style: AppFont.fontsize15),
                        Text(items.subtitle, style: AppFont.fontsizew40012)
                      ]),
                  Container(
                    width: 77.w,
                    height: 41.h,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20.r),
                      color: Colors.white,
                    ),
                    child: Center(
                      child: Text(items.text, style: AppFont.fontsizew50014),
                    ),
                  )
                ],
              ),
            );
          }),
    );
  }
}
