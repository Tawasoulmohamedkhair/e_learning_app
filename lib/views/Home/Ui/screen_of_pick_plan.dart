import 'package:e_learning_app/Theme/colors.dart';
import 'package:e_learning_app/Theme/fontstyle.dart';
import 'package:e_learning_app/Theme/style.dart';
import 'package:e_learning_app/views/Home/widget/container_list.dart';
import 'package:e_learning_app/views/Home/widget/image_container_plan.dart';
import 'package:e_learning_app/views/Home/widget/triangle_clip.dart';
import 'package:e_learning_app/views/splash/Ui/home_screen.dart';
import 'package:flutter/material.dart';

class ScreenOfPickPlan extends StatelessWidget {
  const ScreenOfPickPlan({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: lavender,
      appBar: AppBar(
        backgroundColor: lavender,
      ),
      body: SafeArea(
        child: SingleChildScrollView(
            padding: const EdgeInsets.only(left: 20),
            child: Center(
              child: Container(
                padding: EdgeInsets.only(left: 20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const ImageContainer(),
                const SizedBox(
                      height: 40,
                ),
                    
                Text(
                    textAlign: TextAlign.start,
                    'Pick a Plan to Try for free. You\n can cancel anytime',
                        style: fontsize21),
                const SizedBox(
                  height: 15,
                ),
                Text('Choose a plan to start after you 1 week fre trial',
                        style: fontw500),
                    SizedBox(
                      child: sizeboxs,
                ),
                    Stack(alignment: AlignmentDirectional.topEnd, children: [
                      Align(
                          alignment: Alignment.topLeft,
                          child: containerList(
                              Image.asset('assets/images/tick.png'),
                              'BRAINLY \n TUTOR',
                              'All answers, no ads1',
                              '\$100.99',
                              'Billed every year',
                              '12 month at \$8.00/monyh')),
                      Stack(alignment: Alignment(.70, -.99), children: [
                        Align(
                          alignment: Alignment(.50, 0),
                          child: containerList(
                              Image.asset('assets/images/tick.png'),
                              'BRAINLY \nTUTOR',
                              'All answers, no ads',
                              '\$100.99',
                              'Billed every year',
                              '12 month at\$8.00 /monyh'),
                        ),
                        ClipPath(
                          clipper: ClipperClipper(),
                          child: Container(
                            padding: EdgeInsets.only(left: 15),
                            color: Colors.white,
                            width: 47,
                            child: Image.asset(
                                alignment: AlignmentDirectional.topCenter,
                                color: bluecolor,
                                'assets/images/tick.png'),
                          ),
                        ),
                      ]),
                    ]),
                    const SizedBox(
                      child: sizeboxs,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 50),
                      child: Row(children: [
                        Image.asset('assets/images/informations.png'),
                        const SizedBox(
                          width: 15,
                        ),
                        Text('What is Brainly Tutor?', style: fontsize18)
                      ]),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Row(
                      children: [
                        TextButton(
                            onPressed: () {},
                            child: Text('Skip', style: fontsize15)),
                        const SizedBox(
                          width: 20,
                        ),
                        InkWell(
                          onTap: () {
                            Navigator.pushReplacement(
                                context,
                                MaterialPageRoute(
                                  builder: (context) =>
                                      const SplashOnlineLearning(),
                                ));
                          },
                          child: Container(
                              width: 300,
                              height: 60,
                              padding: EdgeInsets.all(20),
                              decoration: BoxDecoration(
                                  color: bluecolor,
                                  borderRadius: BorderRadius.circular(50)),
                              child: Center(
                                  child: Text('Start Free Trail',
                                      style: fontsize15w500))),
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