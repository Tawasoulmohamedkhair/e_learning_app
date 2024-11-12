import 'package:e_learning_app/Theme/assets_imge.dart';
import 'package:e_learning_app/Theme/colors.dart';
import 'package:e_learning_app/Theme/fontstyle.dart';
import 'package:e_learning_app/controller/setup_learning_map/subscrptionplancontroller.dart';
import 'package:e_learning_app/model/pickPlan/subscriptionplanlistmodel.dart';
import 'package:e_learning_app/views/setup_learning_map/widget/triangle_clip.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class SubscriptionPlanScreen extends StatelessWidget {
  final subscrptionplancontroller controller =
      Get.put(subscrptionplancontroller());

  SubscriptionPlanScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final plan = controller.subscriptionPlans;

    return Material(
        color: AppColor.lavender,
        child: Padding(
          padding: const EdgeInsets.only(left: 20),
          child: Stack(alignment: AlignmentDirectional.topEnd, children: [
            Align(
                alignment: Alignment.topLeft,
                child: SubscriptionPlanCard(plan.first)),
            Stack(alignment: const Alignment(.70, -.90), children: [
              Align(
                  alignment: const Alignment(.50, 0),
                  child: SubscriptionPlanCard(plan.last)),
              ClipPath(
                clipper: ClipperClippers(),
                child: Container(
                  color: Colors.white,
                  width: 40.w,
                  child: Image.asset(
                      alignment: AlignmentDirectional.topCenter,
                      color: AppColor.bluecolor,
                      AssetsImages.tick),
                ),
              ),
            ]),
          ]),
        ));
  }
}

// Card Widget for Subscription Plan
class SubscriptionPlanCard extends StatelessWidget {
  final SubscriptionPlan plan;

  const SubscriptionPlanCard(this.plan, {super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Container(
        width: 230,
        height: 300,
        decoration: BoxDecoration(
          color: Colors.blue,
          borderRadius: BorderRadius.circular(10),
        ),
        padding: const EdgeInsets.all(20),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'BRAINLY \nTUTOR',
                style: AppFont.fontsize15w500,
              ),
              const SizedBox(height: 10),
              ...plan.features.map((feature) => Row(
                    children: [
                      const Icon(Icons.check, color: Colors.white),
                      Text(
                        feature,
                        style: AppFont.fontsizew400,
                      ),
                    ],
                  )),
              const SizedBox(height: 20),
              Text(
                '\$${plan.price.toStringAsFixed(2)}',
                style: AppFont.fontsize20w500,
              ),
              Text(
                plan.billingPeriod,
                style: AppFont.fontsize14w400,
              ),
              const SizedBox(height: 10),
              Text(
                '12 month at \$${plan.monthlyPrice.toStringAsFixed(2)}/month',
                style: AppFont.fontsizew400,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
