import 'package:e_learning_app/Theme/colors.dart';
import 'package:e_learning_app/Theme/fontstyle.dart';
import 'package:e_learning_app/views/component/appbar_section.dart';
import 'package:e_learning_app/views/coursepage/UI/onlinecoursdetails.dart';
import 'package:e_learning_app/views/coursepage/widget/onlinecourses/onlinecourse.dart';
import 'package:e_learning_app/views/coursepage/widget/onlinecourses/icon_circle.dart';
import 'package:flutter/material.dart';

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
      appBar: AppBar(
        backgroundColor: lavender,
      ),
      backgroundColor: lavender,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              appbarsection(Icons.arrow_back, 'Courses',
                  Image.asset('assets/images/Book.png'), () {
                Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                        builder: (context) => OnlineCourseDetails()));
              }),
              SizedBox(
                height: 40,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    'Online \nCourses',
                    style: fontsize18,
                  ),
                  SizedBox(
                    width: 40,
                  ),
                  Container(
                      width: 154,
                      height: 154,
                      child: Image.asset(
                          width: 140,
                          height: 200,
                          'assets/images/illustration.png'))
                ],
              ),
              Stack(
                children: [
                  Container(
                    width: double.infinity,
                    height: 700,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(50),
                    ),
                    child: Column(
                      children: [
                        SizedBox(
                          height: 40,
                        ),
                        onlinecourse(
                          Image.asset(
                            'assets/images/Adobe XD icon.png',
                          ),
                          'XD Prototyping',
                          '10 hours, 19 lessons',
                          '25%',
                          circlecontainer(Image.asset(
                              width: 6,
                              height: 8,
                              color: bluecolor,
                              'assets/images/Polygon 1.png')),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        onlinecourse(
                          Image.asset(
                            'assets/images/Sketch Icon.png',
                          ),
                          'Sketch',
                          '10 hours, 19 lessons',
                          '25%',
                          circlecontainer(
                              Image.asset('assets/images/Path 109 (1).png')),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        onlinecourse(
                          Image.asset(
                            'assets/images/After Effects Icon.png',
                          ),
                          'After Effects',
                          '10 hours, 19 lessons',
                          '25%',
                          circlecontainer(
                              Image.asset('assets/images/Path 109 (1).png')),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        onlinecourse(
                          Image.asset(
                            'assets/images/Figma icon.png',
                          ),
                          'Figma',
                          '10 hours, 19 lessons',
                          '25%',
                          circlecontainer(
                              Image.asset('assets/images/Path 109 (1).png')),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        onlinecourse(
                          Image.asset(
                            'assets/images/Photoshop Icon.png',
                          ),
                          'Adobe Photoshop.',
                          '10 hours, 19 lessons',
                          '25%',
                          circlecontainer(
                              Image.asset('assets/images/Path 109 (1).png')),
                        ),

                        //
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
