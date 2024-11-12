import 'package:e_learning_app/Theme/assets_imge.dart';
import 'package:e_learning_app/Theme/colors.dart';
import 'package:e_learning_app/views/setting/widget/profile_section.dart';
import 'package:e_learning_app/views/setting/widget/projectsection/project_tab.dart';
import 'package:flutter/material.dart';

class Projectcontent extends StatelessWidget {
  const Projectcontent({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.lavender,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.only(left: 10, right: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(Icons.arrow_back_ios),
                    MaterialButton(
                        onPressed: () {
                          // Get.off(() => PremiumUserScreen());
                        },
                        child: Image.asset(AssetsImages.premium)),
                  ],
                ),
              ),
              ProfileSection(),
              SizedBox(
                height: 20,
              ),
              //ProjectTab(),
               ProjectTab (),
            ],
          ),
        ),
      ),
    );
  }
}
