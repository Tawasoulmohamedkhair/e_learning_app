import 'package:e_learning_app/Theme/colors.dart';
import 'package:e_learning_app/views/setting/UI/premium_user_screen.dart';
import 'package:e_learning_app/views/setting/widget/profile_section.dart';
import 'package:e_learning_app/views/setting/widget/tab_bar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ProjectSettingScreen extends StatelessWidget {
  const ProjectSettingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.lavender,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    MaterialButton(
                        onPressed: () {
                          Get.off(PremiumUserScreen());
                        },
                        child: Icon(Icons.settings_outlined)),
                  ],
                ),
              ),
              ProfileSection(),
              TabBarItem(
                '03',
                'Projects',
                '05',
                'Courses',
                '20',
                'Following',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
