import 'package:e_learning_app/Theme/colors.dart';
import 'package:e_learning_app/Theme/fontstyle.dart';
import 'package:e_learning_app/Theme/style.dart';
import 'package:e_learning_app/views/component/button.dart';
import 'package:e_learning_app/views/studentprofilesetting/UI/premium_user_screen.dart';
import 'package:e_learning_app/views/studentprofilesetting/widget/text_form_setting.dart';
import 'package:flutter/material.dart';

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
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 40,
            ),
            Icon(Icons.arrow_back_ios),
            SizedBox(
              height: 20,
            ),
            Text(
              'Password change',
              style: fontsize21,
            ),
            SizedBox(
              height: 60,
            ),
            TextFormeSetting(
              null,
              title: 'Enter old password',
            ),
            SizedBox(
              height: 20,
            ),
            TextFormeSetting(Icon(Icons.remove_red_eye_outlined),
                title: 'Enter new password'),
            SizedBox(
              height: 20,
            ),
            TextFormeSetting(Icon(Icons.remove_red_eye_outlined),
                title: '*************'),
            SizedBox(
              child: sizeboxs,
            ),
            ButtonScreen('Reset', bluecolor, onTap: () {
              Navigator.pushReplacement(context,
                  MaterialPageRoute(builder: (context) => PremiumUserScreen()));
            }),
          ],
        ),
      )),
    );
  }
}
