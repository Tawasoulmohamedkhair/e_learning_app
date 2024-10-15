import 'package:e_learning_app/Theme/colors.dart';
import 'package:e_learning_app/views/setting/widget/bottomnavigation_bar.dart';
import 'package:e_learning_app/views/setting/widget/student_information.dart';
import 'package:e_learning_app/views/setting/widget/tab_bar.dart';
import 'package:flutter/material.dart';

class CoursesScreen extends StatelessWidget {
  const CoursesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColor.lavender,
      ),
      backgroundColor: AppColor.lavender,
      bottomNavigationBar: BottomNavigationbarScreen(),
      body: SafeArea(
          child: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Container(
          padding: const EdgeInsets.only(right: 10),
          width: double.infinity,
          child: Column(
            children: [
              studentinformation(
                  () {
              },
                  const Icon(Icons.settings_outlined),
                  Image.asset('assets/images/Profile Avatar.png'),
                  '@isayef',
                  'Just a simple guy who loves do \nsomething new and fun! 😜',
                  Image.asset('assets/images/instagram 1.png'),
                  Image.asset('assets/images/facebook1.png'),
                  Image.asset('assets/images/twitter 1.png')),
              TabBarItem(
                '03',
                'Projects',
                '04',
                'Courses',
                '20',
                'Following',
              ),
            ],
          ),
        ),
      )),
    );
  }
}
