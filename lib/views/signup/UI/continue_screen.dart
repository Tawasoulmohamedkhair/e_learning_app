import 'package:e_learning_app/Theme/assets_imge.dart';
import 'package:e_learning_app/Theme/colors.dart';
import 'package:e_learning_app/Theme/fontstyle.dart';
import 'package:e_learning_app/views/component/button.dart';
import 'package:e_learning_app/views/signup/widget/socialmedialink.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ContinueScreenSignup extends StatelessWidget {
  const ContinueScreenSignup({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: AppColor.lavender,
        body: SafeArea(
          child: Container(
            width: 375.w,
            height: 812.h,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  height: 30.h,
                ),
                Text(
                  textAlign: TextAlign.center,
                  'Welcome!\nSign up to continue!',
                  style: AppFont.fontsize25,
                ),
                SizedBox(
                  height: 60.h,
                ),
                SocialMediaLink(
                  Image.asset(
                      width: 28.w, height: 28.h,
                     AssetsImages.google),
                  title: ' Sign Up with Google',
                  Colors.white,
                  50.r,
                  0,
                  300.w,
                  60.h,
                ),
                SizedBox(
                  height: 20.h,
                ),
                SocialMediaLink(
                  Image.asset(
                      width: 28.w, height: 28.h,
                    AssetsImages.facebook,
                  ),
                  title: ' Sign Up with Facebook',
                  Colors.white,
                  50.r,
                  0,
                  300.w,
                  60.h,
                ),
                SizedBox(
                  height: 20.h,
                ),
                Text('Or'),
                SizedBox(
                  height: 20.h,
                ),
                Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(50.r),
                  ),
                  width: 300.w,
                  height: 60.h,
                  child: Center(
                      child: Text(
                    'Sign up with email',
                    style: AppFont.fontsize18,
                  )),
                ),
                SizedBox(
                  height: 10.h,
                ),
                Text(
                  'By signing up you are agreed with our \nfriendly terms and condition.',
                  style: AppFont.fontweghitw500,
                ),
                SizedBox(
                  height: 60.h,
                ),
                Text(
                  'Already have an account?',
                  style: AppFont.fontsize18,
                ),
                SizedBox(
                  height: 10.h,
                ),
                ButtonScreen('Signin', AppFont.fontweghit500, Colors.white,
                    width: 300.w, height: 60.h, onTap: () {})
              ],
            ),
          ),
        ));
  }
}
