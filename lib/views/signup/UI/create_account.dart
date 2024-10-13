import 'package:e_learning_app/Theme/assets_imge.dart';
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
          padding: const EdgeInsets.only(top: 60, right: 20, left: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: 60.h,
              ),
             
              Image.asset(AssetsImages.Icons),
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
              textformsignup(const Icon(Icons.person), 'UserName'),

             
              SizedBox(
                height: 20.h,
              ),
              textformsignup(const Icon(Icons.email_outlined), 'Email id'),

              
              SizedBox(
                height: 20.h,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SocialMediaLink(
                      Image.asset(
                          width: 17.w, height: 22.h, AssetsImages.Hide),
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
                    child: Image.asset(AssetsImages.Fingerprint),
                  )
                ],
              ),
              
              Container(
                width: 400.w,
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
                        width: 10.w,
                      ),
                      /*    Expanded(
                        flex: 1,
                        child: RichText(
                          text: TextSpan(
                              text: 'I hereby agree to the ',
                              style: AppFont.fontsize14w500,
                              children: <InlineSpan>[
                                WidgetSpan(
                                    alignment: PlaceholderAlignment.baseline,
                                    baseline: TextBaseline.alphabetic,
                                    child: LinkButton(
                                      urlLabel: 'terms ofservices',
                                      url: '',
                                    )),
                                TextSpan(
                                  text: 'and',
                                  style: AppFont.fontsize14w500,
                                ),
                                WidgetSpan(
                                  alignment: PlaceholderAlignment.baseline,
                                  baseline: TextBaseline.alphabetic,
                                  child: LinkButton(
                                    urlLabel: 'privacy policy',
                                    url: '',
                                  ),
                                )
                              ]),
                        ),
                      ),*/
                    ]),


                   
              ),
             
              ButtonScreen(
                  'Create Account', AppFont.fontsize18w500, AppColor.bluecolor,
                  width: 332.w, height: 53.h, onTap: () {}),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Text('Already have an account?'),
                  TextButton(
                    onPressed: () {},
                    child: const Text(' Sign in'),
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
