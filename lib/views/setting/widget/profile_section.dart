import 'package:e_learning_app/Theme/assets_imge.dart';
import 'package:e_learning_app/Theme/colors.dart';
import 'package:e_learning_app/controller/setting/profile_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ProfileSection extends StatelessWidget {
  final ProfileController profilecontroller = Get.put(ProfileController());
  ProfileSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Obx(() {
      var profile = profilecontroller.Profile.value;

      return Container(
        color: AppColor.lavender,
        child: Column(
          children: [
            CircleAvatar(
              radius: 50,
              backgroundImage: AssetImage(profile.profileImageUrl),
            ),
            SizedBox(height: 10),
            Text(profile.username,
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
            SizedBox(height: 10),
            Text(profile.bio),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(AssetsImages.instagram),
                SizedBox(width: 10),
                Image.asset(AssetsImages.facebook),
                SizedBox(width: 10),
                Image.asset(AssetsImages.twitter)
              ],
            ),
          ],
        ),
      );
    });
  }
}
//assets/images/
