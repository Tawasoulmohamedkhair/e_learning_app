import 'package:e_learning_app/Theme/colors.dart';
import 'package:e_learning_app/Theme/fontstyle.dart';
import 'package:e_learning_app/Theme/style.dart';
import 'package:e_learning_app/views/component/button.dart';
import 'package:e_learning_app/views/Home/coursepage/UI/CourseScreen/online_courses_screen.dart';
import 'package:e_learning_app/views/setting/widget/help_and_support_section.dart';
import 'package:e_learning_app/views/setting/widget/setting_item.dart';
import 'package:e_learning_app/views/setting/widget/switch_notification_widget.dart';
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
        backgroundColor: AppColor.lavender,
      ),
      backgroundColor: AppColor.lavender,
      body: SafeArea(
          child: SingleChildScrollView(
              child: Container(
        padding: const EdgeInsets.only(left: 10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: const EdgeInsets.only(left: 30, right: 20),
              child: Row(children: [
                GestureDetector(
                    onTap: () => Get.offAll(() => OnlineCoursesScreen()),
                    child: const Icon(Icons.arrow_back_ios)),
                SizedBox(
                  width: 100.w,
                ),
                Center(
                    child: Text(
                  textAlign: TextAlign.center,
                  'Settings',
                  style: AppFont.fontsize22,
                )),
              ]),
            ),
            SizedBox(
              height: 20.h,
            ),
            SettingItem('Membership', 'Premium', 'Upgrade'),
            SizedBox(
                width: 335.w,
                child: const Divider(
                  color: Color(0xffCFD1D4),
                )),
            SizedBox(
              height: 20.h,
            ),
            SettingItem('Account', 'Profile settings', 'manage'),
            SizedBox(
                width: 335.w,
                child: const Divider(
                  color: Color(0xffCFD1D4),
                )),
            SizedBox(
              height: 20.h,
            ),
            SwitchNotification('Notification', 'Personalized Notifications'),
            SizedBox(
                width: 335.w,
                child: const Divider(
                  color: Color(0xffCFD1D4),
                )),
            SizedBox(
              height: 20.h,
            ),
            SettingItem('Security', 'Password change', 'manage'),
            SizedBox(
                width: 335.w,
                child: const Divider(
                  color: Color(0xffCFD1D4),
                )),
            SizedBox(
              height: 20.h,
            ),
            Container(
              padding: const EdgeInsets.only(left: 20, right: 20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Help & Support',
                    style: AppFont.fontsizew50014,
                  ),
                  SizedBox(
                    height: 20.h,
                  ),
                  helpandsupportsection(
                      'About us', const Icon(Icons.arrow_forward_ios)),
                  SizedBox(
                    height: 20.h,
                  ),
                  helpandsupportsection(
                      'Terms & Condition', const Icon(Icons.arrow_forward_ios)),
                  SizedBox(
                    height: 20.h,
                  ),
                  helpandsupportsection(
                      'Privacy policy', const Icon(Icons.arrow_forward_ios)),
                ],
              ),
            ),
            SizedBox(
              child: sizeboxs,
            ),
            ButtonScreen('sign out', AppFont.fontsize16w500, AppColor.bluecolor,
                width: 375.w, height: 60.h, onTap: () {})
          ],
        ),
      ))),
    );
  }
}
