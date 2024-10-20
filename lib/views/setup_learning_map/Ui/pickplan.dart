import 'package:e_learning_app/views/Home/coursepage/UI/CourseScreen/online_courses_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:e_learning_app/Theme/assets_imge.dart';
import 'package:e_learning_app/Theme/colors.dart';
import 'package:e_learning_app/Theme/fontstyle.dart';
import 'package:e_learning_app/controller/setup_learning_map/pickplancontroller.dart';
import 'package:e_learning_app/model/pickPlan/subscriptionplanlistmodel.dart';
import 'package:e_learning_app/views/Onboarding/ui/onboarding_home_screen.dart';
import 'package:e_learning_app/views/setup_learning_map/widget/image_container_discount.dart';
import 'package:e_learning_app/views/setup_learning_map/widget/subscriptionplan.dart';

class PickPlanScreen extends StatelessWidget {
  final PickPlanController controller = Get.put(PickPlanController());

  PickPlanScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: AppColor.lavender,
        appBar: AppBar(
          backgroundColor: AppColor.lavender,
        ),
        body: Container(
          height: 1000,
          child: SingleChildScrollView(
            child: Obx(
              () {
                if (controller.isLoading.value) {
                  return const Center(child: CircularProgressIndicator());
                }

                if (controller.pickPlanModel.value == null) {
                  return const Center(
                      child: Text(
                    'No plan available',
                    style: TextStyle(fontSize: 40, color: Colors.red),
                  ));
                }

                return Column(
                  children: [
                    ImageContainerDiscount(),
                    SizedBox(
                      height: 20.h,
                    ),
                    Text(
                        textAlign: TextAlign.start,
                        'Pick a Plan to Try for free. You\n can cancel anytime',
                        style: AppFont.fontsize21),
                    SizedBox(
                      height: 15.h,
                    ),
                    Text('Choose a plan to start after you 1 week fre trial',
                        style: AppFont.fontw500),
                    SizedBox(
                      height: 15.h,
                    ),
                    SubscriptionPlanScreen(),
                    Padding(
                      padding: const EdgeInsets.only(left: 50),
                      child: Row(children: [
                        Image.asset(AssetsImages.informations),
                        SizedBox(
                          width: 15.w,
                        ),
                        Text('What is Brainly Tutor?',
                            style: AppFont.fontsize18)
                      ]),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: Row(
                        children: [
                          Container(
                            width: 72,
                            height: 120.h,
                            child: TextButton(
                                onPressed: () {},
                                child: Text('Skip', style: AppFont.fontsize15)),
                          ),
                          SizedBox(
                            width: 10.w,
                          ),
                          InkWell(
                            onTap: () {
                              Navigator.pushReplacement(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) =>
                                        OnboardingHomeScreen(),
                                  ));
                            },
                            child: GestureDetector(
                              onTap: () => Get.to(() => CoursesScreen()),
                              child: Container(
                                  width: 260.w,
                                  height: 60.h,
                                  padding: const EdgeInsets.all(20),
                                  decoration: BoxDecoration(
                                      color: AppColor.bluecolor,
                                      borderRadius:
                                          BorderRadius.circular(50.r)),
                                  child: Center(
                                      child: Text('Start Free Trail',
                                          style: AppFont.fontsize15w500))),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                );
              },
            ),
          ),
        ));
  }
}

class SubscriptionPlanCard extends StatelessWidget {
  final SubscriptionPlan plan;

  const SubscriptionPlanCard({
    super.key,
    required this.plan,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.blue,
          borderRadius: BorderRadius.circular(10),
        ),
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 10),
            ...plan.features.map((feature) => Row(
                  children: [
                    const Icon(Icons.check, color: Colors.white),
                    const SizedBox(width: 10),
                    Text(
                      feature,
                      style: const TextStyle(color: Colors.white),
                    ),
                  ],
                )),
            const SizedBox(height: 20),
            Text(
              '\$${plan.price.toStringAsFixed(2)}',
              style: const TextStyle(
                color: Colors.white,
                fontSize: 28,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              plan.billingPeriod,
              style: const TextStyle(color: Colors.white),
            ),
            const SizedBox(height: 10),
            Text(
              '12 month at \$${plan.monthlyPrice.toStringAsFixed(2)}/month',
              style: const TextStyle(color: Colors.white),
            ),
          ],
        ),
      ),
    );
  }
}
