import 'package:e_learning_app/Theme/colors.dart';
import 'package:e_learning_app/views/setting/UI/profile_setting.dart';
import 'package:e_learning_app/views/setting/widget/mytabs.dart';
import 'package:e_learning_app/views/setting/widget/profile_section.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Followingcontent extends StatelessWidget {
  const Followingcontent({super.key});

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
                          Get.off(() => ProfileSetting());
                        },
                        child: Icon(Icons.settings_outlined)),
                  ],
                ),
              ),
              ProfileSection(),
              SizedBox(
                height: 20,
              ),
              Container(height: 800, child: TabBarScreen()),
            ],
          ),
        ),
      ),
    );
  }
}
