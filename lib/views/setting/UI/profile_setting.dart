import 'package:e_learning_app/Theme/colors.dart';
import 'package:e_learning_app/Theme/fontstyle.dart';
import 'package:e_learning_app/views/component/button.dart';
import 'package:e_learning_app/views/setting/widget/text_form_setting.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ProfileSetting extends StatelessWidget {
  const ProfileSetting({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColor.lavender,
      ),
      body: SafeArea(
        child: Container(
          color: AppColor.lavender,
          padding: const EdgeInsets.only(left: 20),
          width: 375.w,
          height: 812.h,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Icon(Icons.arrow_back_ios),
              SizedBox(height: 20.h),
              Text(
                'Profile Setting',
                style: AppFont.fontsize21w400,
              ),
              SizedBox(height: 20.h),
              Center(
                child: Image.asset(
                    width: 120.w,
                    height: 120.h,
                    'assets/images/Profile Avatar.png'),
              ),
              Center(
                child: Container(
                  width: 201.w,
                  height: 41.h,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    color: AppColor.bluecolor,
                  ),
                  child: Center(
                    child: Text(
                      textAlign: TextAlign.center,
                      'Change profile picture',
                      style: AppFont.fontweghit500size16,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 80.h,
              ),
              TextFormeSetting(null, title: 'new username'),
              SizedBox(
                height: 100.h,
              ),
              SizedBox(
                height: 100.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  ButtonScreen('Cancel', AppFont.fontsize15, Colors.white,
                      width: 91.w, height: 35.h, onTap: () {}),
                  SizedBox(width: 20.w),
                  ButtonScreen(
                      'save', AppFont.fontsize15w500, AppColor.bluecolor,
                      width: 75.w, height: 35.h, onTap: () {})
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
