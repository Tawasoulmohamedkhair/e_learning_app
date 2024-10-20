import 'package:e_learning_app/Theme/colors.dart';
import 'package:e_learning_app/Theme/fontstyle.dart';
import 'package:e_learning_app/controller/setup_learning_map/pickplancontroller.dart';
import 'package:e_learning_app/views/setup_learning_map/widget/clip_Path_container.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class ImageContainerDiscount extends StatelessWidget {
  ImageContainerDiscount({super.key});
  final PickPlanController controller = Get.put(PickPlanController());

  @override
  Widget build(BuildContext context) {
    final pickPlan = controller.pickPlanModel.value!;

    return Container(
      padding: const EdgeInsets.only(left: 20, right: 20),
      child: Stack(
        children: [
          Positioned(
              child: Container(
            width: 380.w,
            height: 143.h,
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(50.0)),
              color: AppColor.peachPuff,
            ),
            child: const ClipPathContainer(),
          )),
          OverflowBar(
            spacing: 0.8,
            overflowSpacing: 0.8,
            children: [
              Image.asset(
                pickPlan.img,
                width: 141.w,
                height: 140.h,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Text('${pickPlan.discount}%', style: AppFont.fontsize60),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
