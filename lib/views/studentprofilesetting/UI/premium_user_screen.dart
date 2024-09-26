import 'package:e_learning_app/Theme/colors.dart';
import 'package:e_learning_app/views/studentprofilesetting/UI/courses_screen.dart';
import 'package:e_learning_app/views/studentprofilesetting/widget/appbar_item.dart';
import 'package:e_learning_app/views/studentprofilesetting/widget/bottomnavigation_bar.dart';
import 'package:e_learning_app/views/studentprofilesetting/widget/project_tab.dart';
import 'package:e_learning_app/views/studentprofilesetting/widget/student_information.dart';
import 'package:e_learning_app/views/studentprofilesetting/widget/tab_bar.dart';
import 'package:flutter/material.dart';

class PremiumUserScreen extends StatefulWidget {
  const PremiumUserScreen({super.key});

  @override
  State<PremiumUserScreen> createState() => _PremiumUserScreenState();
}

class _PremiumUserScreenState extends State<PremiumUserScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: lavender,
      bottomNavigationBar: BottomNavigationbarScreen(),
      body: SafeArea(
          child: SingleChildScrollView(
        padding: EdgeInsets.only(top: 20, right: 10, left: 10),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          studentinformation(() {
            Navigator.pushReplacement(context,
                MaterialPageRoute(builder: (context) => CoursesScreen()));
          },
              Icon(Icons.settings_outlined),
              Image.asset('assets/images/Profile Avatar.png'),
              '@isayef',
              'Just a simple guy who loves do \nsomething new and fun! 😜',
              Image.asset('assets/images/instagram 1.png'),
              Image.asset('assets/images/facebook1.png'),
              Image.asset('assets/images/twitter 1.png')),
          TabBarItem(
            '03',
            'Projects',
            '05',
            'Courses',
            '20',
            'Following',
          ),
          SizedBox(
            height: 40,
          ),
          ProjectTab(),
        ]),
      )),
    );
  }
}
