import 'package:e_learning_app/Theme/colors.dart';
import 'package:e_learning_app/Theme/fontstyle.dart';
import 'package:e_learning_app/Theme/style.dart';
import 'package:e_learning_app/views/component/button.dart';
import 'package:e_learning_app/views/setting/UI/courses_screen.dart';
import 'package:e_learning_app/views/setting/widget/text_form_setting.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ChangePasswordScreen extends StatefulWidget {
  const ChangePasswordScreen({super.key});

  @override
  State<ChangePasswordScreen> createState() => _ChangePasswordScreenState();
}

class _ChangePasswordScreenState extends State<ChangePasswordScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.lavender,
      body: SafeArea(
          child: Container(
        padding: const EdgeInsets.only(left: 20, right: 20),

        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
           
            const Icon(Icons.arrow_back_ios),
            SizedBox(
              height: 20.h,
            ),
            Text(
              'Password change',
              style: AppFont.fontsize21,
            ),
            SizedBox(
              height: 60.h,
            ),
            TextFormeSetting(
              null,
              title: 'Enter old password',
            ),
            SizedBox(
              height: 20.h,
            ),
            TextFormeSetting(const Icon(Icons.remove_red_eye_outlined),
                title: 'Enter new password'),
            SizedBox(
              height: 20.h,
            ),
            TextFormeSetting(const Icon(Icons.remove_red_eye_outlined),
                title: '*************'),
            SizedBox(
              child: sizeboxs,
            ),
            buttonScreen('Reset', AppFont.fontsize16w500, AppColor.bluecolor,
                width: 335.w, height: 60.h, onTap: () {
              Navigator.pushReplacement(context,
                  MaterialPageRoute(builder: (context) => const CoursesScreen()));
            }),
          ],
        ),
      )),
    );
  }
}
