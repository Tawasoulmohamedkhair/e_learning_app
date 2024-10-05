import 'package:e_learning_app/Theme/colors.dart';
import 'package:e_learning_app/Theme/fontstyle.dart';
import 'package:e_learning_app/Theme/style.dart';
import 'package:e_learning_app/views/component/button.dart';
import 'package:e_learning_app/views/coursepage/UI/online_courses_screen.dart';
import 'package:e_learning_app/views/studentprofilesetting/widget/help_and_support_section.dart';
import 'package:e_learning_app/views/studentprofilesetting/widget/setting_item.dart';
import 'package:e_learning_app/views/studentprofilesetting/widget/switch_notification_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class SettingScreen extends StatefulWidget {
  const SettingScreen({super.key});

  @override
  State<SettingScreen> createState() => _SettingScreenState();
}

class _SettingScreenState extends State<SettingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: lavender,
      ),
      backgroundColor: lavender,
      body: SafeArea(
          child: SingleChildScrollView(
              child: Container(
        padding: EdgeInsets.only(left: 10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: EdgeInsets.only(left: 30, right: 20),
              child: Row(children: [
                GestureDetector(
                    onTap: () => Get.offAll(() => OnlineCoursesScreen()),
                    child: Icon(Icons.arrow_back_ios)),
                SizedBox(
                  width: 100.w,
                ),
                Center(
                    child: Text(
                  textAlign: TextAlign.center,
                  'Settings',
                  style: fontsize22,
                )),
              ]),
            ),
            SizedBox(
              height: 20.h,
            ),
            SettingItem('Membership', 'Premium', 'Upgrade'),
            SizedBox(
                width: 335.w,
                child: Divider(
                  color: Color(0xffCFD1D4),
                )),
            SizedBox(
              height: 20.h,
            ),
            SettingItem('Account', 'Profile settings', 'manage'),
            SizedBox(
                width: 335.w,
                child: Divider(
                  color: Color(0xffCFD1D4),
                )),
            SizedBox(
              height: 20.h,
            ),
            SwitchNotification('Notification', 'Personalized Notifications'),
            SizedBox(
                width: 335.w,
                child: Divider(
                  color: Color(0xffCFD1D4),
                )),
            SizedBox(
              height: 20.h,
            ),
            SettingItem('Security', 'Password change', 'manage'),
            SizedBox(
                width: 335.w,
                child: Divider(
                  color: Color(0xffCFD1D4),
                )),
            SizedBox(
              height: 20.h,
            ),
            Container(
              padding: EdgeInsets.only(left: 20, right: 20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Help & Support',
                    style: fontsizew50014,
                  ),
                  SizedBox(
                    height: 20.h,
                  ),
                  HelpandSupportSection(
                      'About us', Icon(Icons.arrow_forward_ios)),
                  SizedBox(
                    height: 20.h,
                  ),
                  HelpandSupportSection(
                      'Terms & Condition', Icon(Icons.arrow_forward_ios)),
                  SizedBox(
                    height: 20.h,
                  ),
                  HelpandSupportSection(
                      'Privacy policy', Icon(Icons.arrow_forward_ios)),
                ],
              ),
            ),
            SizedBox(
              child: sizeboxs,
            ),
            ButtonScreen('sign out', fontsize16w500, bluecolor,
                width: 375.w, height: 60.h, onTap: () {})
          ],
        ),
      ))),
    );
  }
}
