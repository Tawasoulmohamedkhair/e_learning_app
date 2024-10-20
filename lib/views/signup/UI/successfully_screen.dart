import 'package:e_learning_app/Theme/assets_imge.dart';
import 'package:e_learning_app/Theme/colors.dart';
import 'package:e_learning_app/Theme/fontstyle.dart';
import 'package:e_learning_app/views/component/button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SuccessfullySceenAccount extends StatelessWidget {
  const SuccessfullySceenAccount({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: AppColor.lavender,
        body: SafeArea(
          child: Container(
            child: Column(
              children: [
                Column(children: [
                  Container(
                    height: 200.h,
                  ),
                  Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(
                              width: 40.w,
                              height: 40.h,
                              AssetsImages.stars),
                          SizedBox(
                            width: 80.w,
                          ),
                          Image.asset(
                              color: Colors.red,
                              width: 60.w,
                              height: 40.h,
                              AssetsImages.stars),
                        ],
                      ),
                    ],
                  ),
                  Image.asset(AssetsImages.stars),
                ]),
                SizedBox(
                  height: 40.h,
                ),
                Text(
                  'Account Created\nSuccessfully!',
                  style: AppFont.fontsize25,
                ),
                SizedBox(
                  height: 40.h,
                ),
                Text(
                    "If you are going to use a passage of Lorem Ipsum,\n you need to be sure there isn't anything \nembarrassing.",
                    style: AppFont.fontsize12w500),
                SizedBox(
                  height: 100.h,
                ),
                buttonScreen('Forgot Password', AppFont.fontsize18w500,
                    AppColor.bluecolor,
                    width: 332.w, height: 53.h,
                    onTap: () {})
              ],
            ),
          ),
        ));
  }
}
