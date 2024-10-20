import 'package:e_learning_app/Theme/assets_imge.dart';
import 'package:e_learning_app/Theme/colors.dart';
import 'package:e_learning_app/Theme/fontstyle.dart';
import 'package:e_learning_app/Theme/style.dart';
import 'package:e_learning_app/controller/trackingorder/tracking_order_controller.dart';
import 'package:e_learning_app/views/Home/coursepage/UI/CourseScreen/online_courses_screen.dart';
import 'package:e_learning_app/views/component/button.dart';
import 'package:e_learning_app/views/Home/coursepage/widget/state_of_order.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class TrackongOrderScreen extends StatelessWidget {
  TrackongOrderScreen({super.key});
  final OrderController orderController = Get.put(OrderController());


  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColor.lavender,
        body: Obx(
          () => SingleChildScrollView(
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
                          width: 24.w, height: 15.h, AssetsImages.path),
                    ),
                    SizedBox(
                      width: 20,
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
                  height: 140,
                  padding: const EdgeInsets.only(left: 30, top: 15),
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
                        orderController.orderStatus.value.estimatedDeliveryTime,
                        style: AppFont.fontsize23,
                      ),
                      SizedBox(
                        height: 5.h,
                      ),
                      Container(
                        padding: const EdgeInsets.only(left: 15),
                        width: 200.w,
                        height: 29.h,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10)),
                        child: OverflowBar(
                          overflowSpacing: 0.8,
                          spacing: 0.8,
                          children: [
                            Image.asset(AssetsImages.clock),
                            SizedBox(
                              width: 2.w,
                            ),
                            Text(
                              orderController.orderStatus.value.deliveryWindow,
                              style: AppFont.fontsize14w500,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 40,
                ),
                Container(
                  width: double.infinity,
                  padding: EdgeInsets.only(left: 50),
                  child: OverflowBar(
                    overflowSpacing: 0.8,
                    spacing: 0.8,
                    children: [
                     
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
                           
                            stateoforder(Image.asset(AssetsImages.group),
                                'On the way', AppColor.bluecolor),
                            SizedBox(
                              width: 30.w,
                              height: 60.h,
                              child: const VerticalDivider(
                                color: AppColor.blackcolor,
                                thickness: 1,
                              ),
                            ),
                            stateoforder(Image.asset(AssetsImages.group),
                                'Dispatched', AppColor.pink),
                            SizedBox(
                              width: 30.w,
                              height: 40.h,
                              child: const VerticalDivider(
                                color: AppColor.blackcolor,
                                thickness: 1,
                              ),
                            ),
                            stateoforder(
                              Image.asset(AssetsImages.archive),
                              'Order placed successfully',
                              const Color(0xff7FD77D),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  width: double.infinity,
                  height: 130.h,
                ),
                buttonScreen(
                    'Back to home', AppFont.fontsize15w500, AppColor.bluecolor,
                    width: 250.w, height: 46.h, onTap: () {
                  Navigator.pushReplacement(context,
                      MaterialPageRoute(
                          builder: (context) => CoursesScreen()));
                }),
                
              ],
            ),
          ),
        ),
      ),
    );
  }
}
