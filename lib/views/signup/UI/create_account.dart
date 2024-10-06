import 'package:e_learning_app/Theme/colors.dart';
import 'package:e_learning_app/Theme/fontstyle.dart';
import 'package:e_learning_app/views/component/button.dart';
import 'package:e_learning_app/views/signup/widget/socialmedialink.dart';
import 'package:e_learning_app/views/signup/widget/text_form.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CreateAccount extends StatelessWidget {
  const CreateAccount({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.lavender,
      body: SafeArea(
        child: Container(
          width: 375.w,
          height: 812.h,
          padding: EdgeInsets.only(top: 60, right: 20, left: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: 60.h,
              ),
             
              Image.asset('assets/images/Icons.png'),
              SizedBox(
                height: 10.h,
              ),
              Text(
                'Create an Account',
                style: AppFont.fontsize25,
              ),
              SizedBox(
                height: 10.h,
              ),
              
              Text(
                'A handful of model sentence structures',
                style: AppFont.fontsize12w500,
              ),
              SizedBox(
                height: 40.h,
              ),
              textformsignup(Icon(Icons.person), 'UserName'),

             
              SizedBox(
                height: 20.h,
              ),
              textformsignup(Icon(Icons.email_outlined), 'Email id'),

              
              SizedBox(
                height: 20.h,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SocialMediaLink(
                      Image.asset(
                          width: 17.w, height: 22.h, 'assets/images/Hide.png'),
                      AppColor.lavender,
                      50.r,
                      1,
                      200.sp,
                      40.sp,
                      title: 'Password'),
                 
                  SizedBox(
                    width: 10.w,
                  ),
                  Container(
                    width: 66.w,
                    height: 53.h,
                    decoration: BoxDecoration(
                        border: Border.all(color: AppColor.blackcolor),
                        borderRadius: BorderRadius.circular(50.r)),
                    child: Image.asset('assets/images/Icon.png'),
                  )
                ],
              ),
              
              Container(
                width: 285.w,
                height: 45.h,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      height: 22.h,
                      width: 22.w,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(8.r),
                      ),
                    ),
                    SizedBox(
                      width: 20.w,
                    ),
                    Row(
                      children: [
                        Text(
                          'I hereby agree to the ',
                          style: AppFont.fontsize14w500,
                        ),
                        SizedBox(
                          width: 10.w,
                        ),
                        InkWell(
                          onTap: () {},
                          child: Text(
                            'terms of services ',
                            style: TextStyle(
                              color: AppColor.bluecolor,
                            ),
                          ),
                        ),
                        Text('and'),
                        InkWell(
                            child: Text(
                          ' privacy policy',
                          style: TextStyle(
                            color: AppColor.bluecolor,
                          ),
                        )),
                      ],
                    ),
                  ],
                ),
              ),
             
              ButtonScreen(
                  'Create Account', AppFont.fontsize18w500, AppColor.bluecolor,
                  width: 332.w, height: 53.h, onTap: () {}),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text('Already have an account?'),
                  TextButton(
                    onPressed: () {},
                    child: Text(' Sign in'),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
