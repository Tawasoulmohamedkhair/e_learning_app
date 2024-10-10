import 'package:e_learning_app/Theme/assets_imge.dart';
import 'package:e_learning_app/Theme/colors.dart';
import 'package:e_learning_app/Theme/fontstyle.dart';
import 'package:e_learning_app/Theme/style.dart';
import 'package:e_learning_app/views/component/button.dart';
import 'package:e_learning_app/views/Home/coursepage/UI/CourseScreen/course_detials.dart';
import 'package:e_learning_app/views/Home/coursepage/widget/state_of_order.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TrackongOrderScreen extends StatefulWidget {
  const TrackongOrderScreen({super.key});

  @override
  State<TrackongOrderScreen> createState() => _TrackongOrderScreenState();
}

class _TrackongOrderScreenState extends State<TrackongOrderScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColor.lavender,
        body: SingleChildScrollView(
          //  padding: EdgeInsets.only(left: 10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(
                child: sizeboxs,
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Image.asset(
                        width: 24.w, height: 15.h, AssetsImages.Path),
                  ),
                  SizedBox(
                    width: 20.w,
                  ),
                  Text(
                    'Tracking Order',
                    style: AppFont.fontsize28,
                  ),
                ],
              ),
              SizedBox(
                child: sizeboxs,
              ),
              Container(
                width: 325.w,
                height: 125.h,
                padding: const EdgeInsets.only(left: 15, top: 15),
                decoration: decortiondelivery,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Estimated Delivery time',
                      style: AppFont.fontsize19,
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Text(
                      '4-6 Days ',
                      style: AppFont.fontsize23,
                    ),
                    SizedBox(
                      height: 5.h,
                    ),
                    Container(
                      padding: const EdgeInsets.only(left: 5),
                      width: 200.w,
                      height: 29.h,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10)),
                      child: Row(
                        children: [
                          Image.asset(AssetsImages.clock),
                          SizedBox(
                            width: 2.w,
                          ),
                          Text(
                            'Sat 13- Tue 16 Mar',
                            style: AppFont.fontsize14w500,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(child: sizeboxs),
              Row(
                children: [
                  Container(
                    width: 75.w,
                    height: 249.h,
                  ),
                  Container(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Where is my order',
                          textAlign: TextAlign.center,
                          style: AppFont.fonsize23w500,
                        ),
                        SizedBox(
                          height: 20.h,
                        ),
                        stateoforder(Image.asset(AssetsImages.Group),
                            'On the way', AppColor.bluecolor),
                        SizedBox(
                          width: 30.w,
                          height: 60.h,
                          child: VerticalDivider(
                            color: AppColor.blackcolor,
                            thickness: 1,
                          ),
                        ),
                        stateoforder(Image.asset(AssetsImages.Group),
                            'Dispatched', AppColor.pink),
                        SizedBox(
                          width: 30.w,
                          height: 60.h,
                          child: VerticalDivider(
                            color: AppColor.blackcolor,
                            thickness: 1,
                          ),
                        ),
                        stateoforder(
                          Image.asset(AssetsImages.archive),
                          'Order placed successfully',
                          const Color(0xff7FD77D),
                        )
                      ],
                    ),
                  ),
                ],
              ),
              Container(
                width: double.infinity,
                height: 280.h,
              ),
              
              ButtonScreen(
                  'Back to home', AppFont.fontsize15w500, AppColor.bluecolor,
                  width: 304.w, height: 46.h, onTap: () {
                Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const CourseDetialsScreen()));
              }),
              Container(
                width: 700.w,
                height: 40.h,
                color: Colors.white,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
