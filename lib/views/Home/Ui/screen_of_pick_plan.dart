import 'package:e_learning_app/Theme/colors.dart';
import 'package:e_learning_app/views/Home/widget/image_container_plan.dart';
import 'package:e_learning_app/views/Home/widget/text_add_offer.dart';
import 'package:e_learning_app/views/splash/Ui/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

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
            padding: const EdgeInsets.only(left: 40),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const ImageContainer(),
                const SizedBox(
                  height: 20,
                ),
                Text(
                    textAlign: TextAlign.start,
                    'Pick a Plan to Try for free. You\n can cancel anytime',
                    style: GoogleFonts.dmSans(
                        color: blackcolor,
                        fontSize: 21,
                        fontWeight: FontWeight.w500)),
                const SizedBox(
                  height: 15,
                ),
                Text('Choose a plan to start after you 1 week fre trial',
                    style: GoogleFonts.dmSans(
                        color: sonicSilver,
                        fontSize: 15,
                        fontWeight: FontWeight.w500)),
                const SizedBox(
                  height: 30,
                ),
                Stack(children: [
                  Container(
                    padding: const EdgeInsets.only(right: 20),
                    width: 147,
                    height: 302,
                    decoration: BoxDecoration(
                      color: bluecolor,
                      borderRadius: BorderRadius.circular(16),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          padding: const EdgeInsets.all(20),
                          width: 43,
                          height: 47,
                        ),
                        RotationTransition(
                          turns: const AlwaysStoppedAnimation(.45),
                          child: Text(
                            'BRAINLY \n TUTOR',
                            style: GoogleFonts.dmSans(
                                color: Colors.white,
                                fontSize: 15,
                                fontWeight: FontWeight.w500),
                          ),
                        ),
                        const SizedBox(
                          height: 50,
                        ),
                        List_add_offer(Image.asset('assets/images/tick.png'),
                            'All answers, no ads'),
                        List_add_offer(Image.asset('assets/images/tick.png'),
                            'All answers, no ads'),
                        List_add_offer(Image.asset('assets/images/tick.png'),
                            'All answers, no ads'),
                        Text(
                          '\$100.99',
                          style: GoogleFonts.dmSans(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.w500),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Text(
                          'Billed every year',
                          style: GoogleFonts.dmSans(
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                              color: Colors.white),
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
                  Align(
                    alignment: const Alignment(.20, 2),
                    child: Stack(children: [
                      Container(
                        padding: const EdgeInsets.only(left: 20),
                        decoration: BoxDecoration(
                            color: bluecolor,
                            borderRadius: BorderRadius.circular(16)),
                        width: 200,
                        height: 302,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              width: 43,
                              color: Colors.white,
                              child: Image.asset(
                                  color: bluecolor, 'assets/images/tick.png'),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            RotationTransition(
                                turns: const AlwaysStoppedAnimation(.45),
                                child: Text(
                                  'BRAINLY \n TUTOR',
                                  style: GoogleFonts.dmSans(
                                      color: Colors.white,
                                      fontSize: 15,
                                      fontWeight: FontWeight.w500),
                                )),
                            const SizedBox(
                              height: 50,
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
                              style: GoogleFonts.dmSans(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.white),
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
                    ]),
                  ),
                ]),
                const SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 50),
                  child: Row(children: [
                    Image.asset('assets/images/informations.png'),
                    const SizedBox(
                      width: 15,
                    ),
                    Text('What is Brainly Tutor?',
                        style: GoogleFonts.dmSans(
                            color: blackcolor,
                            fontSize: 18,
                            fontWeight: FontWeight.w500))
                  ]),
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    TextButton(
                        onPressed: () {},
                        child: Text('Skip',
                            style: GoogleFonts.dmSans(
                                color: blackcolor,
                                fontSize: 15,
                                fontWeight: FontWeight.w500))),
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
                          width: 247,
                          height: 60,
                          decoration: BoxDecoration(
                              color: bluecolor,
                              borderRadius: BorderRadius.circular(50)),
                          child: Center(
                              child: Text('Start Free Trail',
                                  style: GoogleFonts.dmSans(
                                      color: Colors.white,
                                      fontSize: 16,
                                      fontWeight: FontWeight.w500)))),
                    ),
                  ],
                ),
              ],
            )),
      ),
    );
  }
}
/*



*/
