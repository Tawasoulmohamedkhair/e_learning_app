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
        backgroundColor: lavender,
        body: SafeArea(
          child: Container(
            width: 375.sp,
            height: 812.sp,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  height: 30.sp,
                ),
                Text(
                  textAlign: TextAlign.center,
                  'Welcome!\nSign up to continue!',
                  style: fontsize25,
                ),
                SizedBox(
                  height: 60.sp,
                ),
                SocialMediaLink(
                  Image.asset(
                      width: 28.sp,
                      height: 28.sp,
                      'assets/images/Rectangle.png'),
                  title: ' Sign Up with Google',
                  Colors.white,
                  50.r,
                  0,
                  300.sp,
                  60.sp,
                ),
                SizedBox(
                  height: 20.sp,
                ),
                SocialMediaLink(
                  Image.asset(
                      width: 28.sp,
                      height: 28.sp,
                      'assets/images/facebook1.png'),
                  title: ' Sign Up with Facebook',
                  Colors.white,
                  50.r,
                  0,
                  300.sp,
                  60.sp,
                ),
                SizedBox(
                  height: 20.sp,
                ),
                Text('Or'),
                SizedBox(
                  height: 20.sp,
                ),
                Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(50.r),
                  ),
                  width: 300.sp,
                  height: 60.sp,
                  child: Center(
                      child: Text(
                    'Sign up with email',
                    style: fontsize18,
                  )),
                ),
                SizedBox(
                  height: 10.sp,
                ),
                Text(
                  'By signing up you are agreed with our \nfriendly terms and condition.',
                  style: fontweghitw500,
                ),
                SizedBox(
                  height: 60.sp,
                ),
                Text(
                  'Already have an account?',
                  style: fontsize18,
                ),
                SizedBox(
                  height: 10.sp,
                ),
                ButtonScreen('Signin', fontweghit500, Colors.white,
                    width: 300, height: 60, onTap: () {})
              ],
            ),
          ),
        ));
  }
}
