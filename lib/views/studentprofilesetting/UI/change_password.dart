import 'package:e_learning_app/Theme/colors.dart';
import 'package:e_learning_app/Theme/fontstyle.dart';
import 'package:e_learning_app/Theme/style.dart';
import 'package:e_learning_app/views/component/button.dart';
import 'package:e_learning_app/views/studentprofilesetting/UI/courses_screen.dart';
import 'package:e_learning_app/views/studentprofilesetting/widget/text_form_setting.dart';
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
      backgroundColor: lavender,
      body: SafeArea(
          child: Container(
        padding: EdgeInsets.only(left: 20, right: 20),

        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
           
            Icon(Icons.arrow_back_ios),
            SizedBox(
              height: 20.sp,
            ),
            Text(
              'Password change',
              style: fontsize21,
            ),
            SizedBox(
              height: 60.sp,
            ),
            TextFormeSetting(
              null,
              title: 'Enter old password',
            ),
            SizedBox(
              height: 20.sp,
            ),
            TextFormeSetting(Icon(Icons.remove_red_eye_outlined),
                title: 'Enter new password'),
            SizedBox(
              height: 20.sp,
            ),
            TextFormeSetting(Icon(Icons.remove_red_eye_outlined),
                title: '*************'),
            SizedBox(
              child: sizeboxs,
            ),
            ButtonScreen('Reset', fontsize16w500, bluecolor,
                width: 335, height: 60, onTap: () {
              Navigator.pushReplacement(context,
                  MaterialPageRoute(builder: (context) => CoursesScreen()));
            }),
          ],
        ),
      )),
    );
  }
}
