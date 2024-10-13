import 'package:e_learning_app/Theme/assets_imge.dart';
import 'package:e_learning_app/Theme/colors.dart';
import 'package:e_learning_app/Theme/fontstyle.dart';
import 'package:e_learning_app/views/Home/coursepage/UI/CourseScreen/onlinecoursdetails.dart';
import 'package:e_learning_app/views/Onboarding/ui/onboarding_home_screen.dart';
import 'package:e_learning_app/views/setup_learning_map/widget/containerListofpickplantutor.dart';
import 'package:e_learning_app/views/setup_learning_map/widget/image_container_discount.dart';
import 'package:e_learning_app/views/setup_learning_map/widget/triangle_clip.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class ScreenOfPickPlan extends StatelessWidget {
  const ScreenOfPickPlan({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.lavender,
      body: SafeArea(
        child: SingleChildScrollView(
            padding: const EdgeInsets.only(left: 10, right: 10),
            child: Center(
              child: Container(
                height: double.maxFinite,
                padding: EdgeInsets.only(left: 20),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 30.h,
                    ),
                    const ImageContainerDiscount(),
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
                      height: 20.h,
                    ),
                    Stack(alignment: AlignmentDirectional.topEnd, children: [
                      Align(
                          alignment: Alignment.topLeft,
                          child: containerListofpickplantutor(
                              Image.asset(AssetsImages.tick),
                              'BRAINLY \n TUTOR',
                              'All answers, no ads1',
                              '\$100.99',
                              'Billed every year',
                              '12 month at \$8.00/monyh')),
                      Stack(alignment: Alignment(.70, -.99), children: [
                        Align(
                          alignment: Alignment(.50, 0),
                          child: containerListofpickplantutor(
                              Image.asset(AssetsImages.tick),
                              'BRAINLY \nTUTOR',
                              'All answers, no ads',
                              '\$100.99',
                              'Billed every year',
                              '12 month at\$8.00 /monyh'),
                        ),
                        ClipPath(
                          clipper: ClipperClipper(),
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
                    SizedBox(
                      height: 20.h,
                    ),
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
                    SizedBox(
                      height: 20.h,
                    ),
                    Row(
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
                                  builder: (context) => OnboardingHomeScreen(),
                                ));
                          },
                          child: GestureDetector(
                            onTap: () => Get.to(() => OnlineCourseDetails()),
                            child: Container(
                                width: 260.w,
                                height: 60.h,
                                padding: EdgeInsets.all(20),
                                decoration: BoxDecoration(
                                    color: AppColor.bluecolor,
                                    borderRadius: BorderRadius.circular(50.r)),
                                child: Center(
                                    child: Text('Start Free Trail',
                                        style: AppFont.fontsize15w500))),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            )),
      ),
    );
  }
}
/*



*/
/*



                      Container(
                        decoration: BoxDecoration(
                            color: bluecolor,
                            borderRadius: BorderRadius.circular(16)),
                        width: 200,
                        height: 302,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                           
                            const SizedBox(
                              height: 10,
                            ),
                            RotationTransition(
                                turns: const AlwaysStoppedAnimation(45),
                                child: Text(
                                  'BRAINLY \n TUTOR',
                                    style: fontsize15w500
                                )),
                            const SizedBox(
                              height: 20,
                            ),
                            List_add_offer(
                                Image.asset('assets/images/tick.png'),
                                'All answers, no ads'),
                            const SizedBox(
                              height: 5,
                            ),
                            List_add_offer(
                                Image.asset('assets/images/tick.png'),
                                'All answers, no ads'),
                            const SizedBox(
                              height: 5,
                            ),
                            List_add_offer(
                                Image.asset('assets/images/tick.png'),
                                'All answers, no ads'),
                            const SizedBox(
                              height: 5,
                            ),
                            Text('\$100.99',
                                style: GoogleFonts.dmSans(
                                    color: Colors.white,
                                    fontSize: 20,
                                    fontWeight: FontWeight.w500)),
                            const SizedBox(
                              height: 10,
                            ),
                            Text(
                              'Billed every year',
                              style: fontsize14

                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Text(
                              '12 month at \$8.00/monyh',
                              style: GoogleFonts.dmSans(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w400,
                                  color: Colors.white),
                            ),
                          ],
                        ),
                      ),
*/
