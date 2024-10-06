import 'package:e_learning_app/Theme/colors.dart';
import 'package:e_learning_app/views/setting/widget/bottomnavigation_bar.dart';
import 'package:e_learning_app/views/setting/widget/following_list_student.dart';
import 'package:e_learning_app/views/setting/widget/student_information.dart';
import 'package:e_learning_app/views/setting/widget/tab_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class StudentFollowing extends StatefulWidget {
  const StudentFollowing({super.key});

  @override
  State<StudentFollowing> createState() => _StudentFollowingState();
}

class _StudentFollowingState extends State<StudentFollowing> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 0,
      length: 3,
      child: Scaffold(
        backgroundColor: AppColor.lavender,
        bottomNavigationBar: BottomNavigationbarScreen(),
        body: SafeArea(
            child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Container(
              padding: EdgeInsets.only(left: 20, right: 20, top: 20),
              child: Column(
                children: [
                  studentinformation(() {
                  
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
                    '04',
                    'Courses',
                    '08',
                    'Following',
                  ),
                  FollowingStudentListScreen(),
                ],
              )),
        )),
      ),
    );
  }
}
