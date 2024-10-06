import 'package:e_learning_app/Theme/colors.dart';
import 'package:e_learning_app/Theme/fontstyle.dart';
import 'package:e_learning_app/views/component/appbar_section.dart';

import 'package:e_learning_app/views/Home/coursepage/widget/videos/subdetails_of_videos.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
//the screen of detailes of videos the first section

Widget Detailesofvideos() {
  return SafeArea(
    child: Material(
      color: AppColor.lavender,
      child: Container(
        padding: const EdgeInsets.only(top: 20),
        width: 448.w,
        child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [


              appbarsection(
                  Icons.arrow_back_ios_new,
                  'Details',
                  Image.asset(
                    'assets/images/Book.png',
                    
                  ),
                  () {}
              ),

              SizedBox(
                height: 20.h,
              ),
              Image.asset(
                'assets/images/Playback.png',
                width: double.infinity,
                fit: BoxFit.contain,
              ),
              SizedBox(
                height: 20.h,
              ),
              Container(
                  padding: const EdgeInsets.only(
                    left: 20,
                  ),
                  color: AppColor.lavender,
                  width: 270.w,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        padding:
                            const EdgeInsets.only(left: 10, top: 10, right: 10),
                        width: 80.w,
                        height: 40.h,
                        color: AppColor.bluecolor,
                        child: Text(
                          textAlign: TextAlign.center,
                          'HOT',
                          style: AppFont.fontsize12,
                        ),
                      ),
                      SizedBox(
                        height: 20.h,
                      ),
                      Row(
                        children: [
                          Container(
                            width: 38.w,
                            height: 38.h,
                            child: CircleAvatar(
                              radius: 20.r,
                              child: Image.asset('assets/images/Avatar.png'),
                            ),
                          ),
                          SizedBox(
                            width: 10.w,
                          ),
                          Text(
                            'Anny Morriarty',
                            style: AppFont.fontsize18,
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 20.h,
                      ),
                      Container(
                        width: 270.w,
                        height: 54.h,
                        child: Text(
                          'Comic drawing essential\n for everyone!',
                          style: AppFont.fontsize21,
                        ),
                      ),
                      SizedBox(
                        height: 20.h,
                      ),
                      Container(
                        width: 280.w,
                        child: Column(
                          children: [
                            Row(
                              children: [
                                subdetailes(
                                  Image.asset('assets/images/Frame2.png'),
                                  '1.hour 30 min',
                                ),
                                SizedBox(
                                  width: 20.w,
                                ),
                                subdetailes(
                                    Image.asset('assets/images/video.png'),
                                    '12 Lessons'),
                              ],
                            ),
                            SizedBox(
                              height: 15.h,
                            ),
                            Row(
                              children: [
                                subdetailes(
                                    Image.asset('assets/images/Frame3.png'),
                                    '4.7  (753)'),
                                SizedBox(
                                  width: 10.w,
                                ),
                                subdetailes(
                                    Image.asset('assets/images/Frame2.png'),
                                    '2K  students'),
                              ],
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 40.h,
                      ),
                      Text(
                        'Lectus vitae lorem luctus mostie vitae mbi curabitur magna \n facilisis turpis nullam nibh gfas ultricies purus molestie quis\n impert id agger adipiscing molestie auctor arcu ium  atd eget \n  faucibus quis id!',
                        style: AppFont.fontsize12w400,
                      ),
                    ],
                  ))
            ]),
      ),
    ),
  );
}
