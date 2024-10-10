import 'package:e_learning_app/Theme/assets_imge.dart';
import 'package:e_learning_app/Theme/colors.dart';
import 'package:e_learning_app/Theme/fontstyle.dart';
import 'package:e_learning_app/views/component/appbar_section.dart';
import 'package:e_learning_app/views/Home/coursepage/UI/home.dart';
import 'package:e_learning_app/views/Home/coursepage/widget/onlinecourses/onlinecourse.dart';
import 'package:e_learning_app/views/Home/coursepage/widget/onlinecourses/icon_circle.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

//the mian screen of online courses
class OnlineCoursesScreen extends StatefulWidget {
  OnlineCoursesScreen({super.key});

  @override
  State<OnlineCoursesScreen> createState() => _OnlineCoursesScreenState();
}

class _OnlineCoursesScreenState extends State<OnlineCoursesScreen> {
  Widget currentScreen = OnlineCoursesScreen();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: AppColor.lavender,
        body: SafeArea(
          child: SingleChildScrollView(
            child: Column(children: [
              appbarsection(
                Icons.arrow_back,
                'Courses',
                Image.asset(AssetsImages.Book),
                () => Get.to(() => Home()),
              ),
              SizedBox(
                height: 40.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    'Online \nCourses',
                    style: AppFont.fontsize18,
                  ),
                  SizedBox(
                    width: 40.w,
                  ),
                  SizedBox(
                      width: 154.w,
                      height: 154.h,
                      child: Image.asset(
                          width: 140.w,
                          height: 200.h,
                          AssetsImages.illustration))
                ],
              ),
              Stack(
                children: [
                  Container(
                    width: double.infinity,
                    height: 700.h,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(50),
                    ),
                    child: Column(
                      children: [
                        SizedBox(
                          height: 40.h,
                        ),
                        onlinecourse(
                          Image.asset(
                            AssetsImages.Adobe,
                          ),
                          'XD Prototyping',
                          '10 hours, 19 lessons',
                          '25%',
                          circlecontainer(Image.asset(
                              width: 6.w,
                              height: 8.h,
                              color: AppColor.bluecolor,
                              AssetsImages.Polygon)),
                        ),
                        SizedBox(
                          height: 20.h,
                        ),
                        onlinecourse(
                          Image.asset(
                            AssetsImages.Sketch,
                          ),
                          'Sketch',
                          '10 hours, 19 lessons',
                          '25%',
                          circlecontainer(
                              Image.asset(AssetsImages.bluecircle)),
                        ),
                        SizedBox(
                          height: 20.h,
                        ),
                        onlinecourse(
                          Image.asset(
                            AssetsImages.AfterEffects,
                          ),
                          'After Effects',
                          '10 hours, 19 lessons',
                          '25%',
                          circlecontainer(
                              Image.asset(AssetsImages.bluecircle)),
                        ),
                        SizedBox(
                          height: 20.h,
                        ),
                        onlinecourse(
                          Image.asset(
                            AssetsImages.Figma,
                          ),
                          'Figma',
                          '10 hours, 19 lessons',
                          '25%',
                          circlecontainer(
                              Image.asset(AssetsImages.bluecircle)),
                        ),
                        SizedBox(
                          height: 20.h,
                        ),
                        onlinecourse(
                          Image.asset(
                            AssetsImages.Photoshop,
                          ),
                          'Adobe Photoshop.',
                          '10 hours, 19 lessons',
                          '25%',
                          circlecontainer(
                              Image.asset(AssetsImages.bluecircle)),
                        ),

                        //
                      ],
                    ),
                  ),
                ],
              ),
            ]),
          ),
        ));
  }
}
