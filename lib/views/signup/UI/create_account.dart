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
      backgroundColor: lavender,
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
                height: 60.sp,
              ),
             
              Image.asset('assets/images/Icons.png'),
              SizedBox(
                height: 10.sp,
              ),
              Text(
                'Create an Account',
                style: fontsize25,
              ),
              SizedBox(
                height: 10,
              ),
              
              Text(
                'A handful of model sentence structures',
                style: fontsize12w500,
              ),
              SizedBox(
                height: 40,
              ),
              textformsignup(Icon(Icons.person), 'UserName'),

             
              SizedBox(
                height: 20,
              ),
              textformsignup(Icon(Icons.email_outlined), 'Email id'),

              
              SizedBox(
                height: 20,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SocialMediaLink(
                      Image.asset(
                          width: 17, height: 22, 'assets/images/Hide.png'),
                      lavender,
                      50.r,
                      1,
                      200.sp,
                      40.sp,
                      title: 'Password'),
                 
                  SizedBox(
                    width: 10.sp,
                  ),
                  Container(
                    width: 66.sp,
                    height: 53.sp,
                    decoration: BoxDecoration(
                        border: Border.all(color: blackcolor),
                        borderRadius: BorderRadius.circular(50.r)),
                    child: Image.asset('assets/images/Icon.png'),
                  )
                ],
              ),
              
              Container(
                width: 285.sp,
                height: 45.sp,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      height: 22.sp,
                      width: 22.sp,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(8.r),
                      ),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Row(
                      children: [
                        Text(
                          'I hereby agree to the ',
                          style: fontsize14w500,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        InkWell(
                          onTap: () {},
                          child: Text(
                            'terms of services ',
                            style: TextStyle(
                              color: bluecolor,
                            ),
                          ),
                        ),
                        Text('and'),
                        InkWell(
                            child: Text(
                          ' privacy policy',
                          style: TextStyle(
                            color: bluecolor,
                          ),
                        )),
                      ],
                    ),
                  ],
                ),
              ),
             
              ButtonScreen('Create Account', fontsize18w500, bluecolor,
                  width: 332, height: 53, onTap: () {}),
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
