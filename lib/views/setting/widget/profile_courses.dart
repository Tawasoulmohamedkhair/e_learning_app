import 'package:e_learning_app/Theme/assets_imge.dart';
import 'package:e_learning_app/Theme/colors.dart';
import 'package:e_learning_app/views/setting/UI/premium_user_screen.dart';
<<<<<<< HEAD
=======
import 'package:e_learning_app/views/setting/widget/bottomnavigation_bar.dart';
>>>>>>> origin/main
import 'package:e_learning_app/views/setting/widget/mytabs.dart';
import 'package:e_learning_app/views/setting/widget/profile_section.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Profilecourses extends StatelessWidget {
  const Profilecourses({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: AppColor.lavender,
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 20,
              ),
              Container(
                padding: EdgeInsets.only(
                  left: 10,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(Icons.arrow_back_ios),
                    MaterialButton(
                        onPressed: () {
                          Get.off(() => PremiumUserScreen());
                        },
                        child: Image.asset(AssetsImages.premium)),
                  ],
                ),
              ),
              ProfileSection(),
              Container(height: 800, child: TabBarScreen()),
            ],
          ),
        ),
      ),
    );
  }
}
