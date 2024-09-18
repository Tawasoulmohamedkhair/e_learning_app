import 'package:e_learning_app/Theme/colors.dart';
import 'package:e_learning_app/views/Home/Ui/screen_of_pick_plan.dart';
import 'package:e_learning_app/views/Home/widget/date_of_reminder.dart';
import 'package:e_learning_app/views/Home/widget/datetimerangepicker_widget.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Learning_Reminder_Screen extends StatelessWidget {
  const Learning_Reminder_Screen({super.key});

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
        appBar: AppBar(
          backgroundColor: lavender,
          leading: Image.asset('assets/images/cross.png'),
        ),
        body: SafeArea(
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Container(
              padding: const EdgeInsets.only(right: 30, left: 20),
              width: width,
              height: height,
              decoration: const BoxDecoration(
                color: lavender,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text('Set up learning reminders',
                      style: GoogleFonts.dmSans(
                        fontSize: 30,
                        fontWeight: FontWeight.w500,
                        color: blackcolor,
                      )),
                  const SizedBox(
                    height: 20,
                  ),
                  Text(
                      'Tell us when you want to learn and we will send push\n notification to remind you, You can change these\n anytime in the settings menu',
                      style: GoogleFonts.dmSans(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        color: sonicSilver,
                      )),
                  const SizedBox(
                    height: 80,
                  ),
                  DateOfReminder(),
                  const SizedBox(
                    height: 60,
                  ),
                  const TimePicker(),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: TextButton(
                          onPressed: () {},
                          child: Text('Skip',
                              style: GoogleFonts.dmSans(
                                  fontSize: 15,
                                  color: blackcolor,
                                  fontWeight: FontWeight.w500)),
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                builder: (context) => ScreenOfPickPlan(),
                              ));
                        },
                        child: Container(
                          width: 100,
                          height: 100,
                          decoration: const BoxDecoration(
                              color: bluecolor, shape: BoxShape.circle),
                          child: Center(
                              child: Text('Continue',
                                  style: GoogleFonts.dmSans(
                                      fontSize: 18,
                                      color: Colors.white,
                                      fontWeight: FontWeight.w500))),
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
          ),
        ));
  }
}
