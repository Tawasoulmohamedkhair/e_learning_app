import 'package:e_learning_app/Theme/colors.dart';
import 'package:e_learning_app/views/setting/UI/courses_screen.dart';
import 'package:e_learning_app/views/setting/widget/bottomnavigation_bar.dart';
import 'package:e_learning_app/views/setting/widget/project_tab.dart';
import 'package:e_learning_app/views/setting/widget/student_information.dart';
import 'package:e_learning_app/views/setting/widget/tab_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PremiumUserScreen extends StatefulWidget {
  const PremiumUserScreen({super.key});

  @override
  State<PremiumUserScreen> createState() => _PremiumUserScreenState();
}

class _PremiumUserScreenState extends State<PremiumUserScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.lavender,
      bottomNavigationBar: BottomNavigationbarScreen(),
      body: SafeArea(
          child: SingleChildScrollView(
        padding: const EdgeInsets.only(top: 20, right: 10, left: 10),
        child: Container(
          height: 1200.h,
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            const Icon(Icons.arrow_back_ios),
            studentinformation(() {
              Navigator.pushReplacement(context,
                  MaterialPageRoute(builder: (context) => const CoursesScreen()));
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
              '05',
              'Courses',
              '20',
              'Following',
            ),
            SizedBox(
              height: 40.h,
            ),
            const ProjectTab(),
          ]),
        ),
      )),
    );
  }
}
