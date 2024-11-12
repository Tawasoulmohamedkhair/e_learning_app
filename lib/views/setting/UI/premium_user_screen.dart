import 'package:e_learning_app/Theme/colors.dart';
import 'package:e_learning_app/controller/detailesscrenn/navigationhome.dart';
import 'package:e_learning_app/views/setting/widget/bottomnavigation_bar.dart';
import 'package:e_learning_app/views/setting/widget/following%20section/followingcontent.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PremiumUserScreen extends StatelessWidget {
  final BottomNavigationController controller =
      Get.put(BottomNavigationController());
  final List<Widget> _screen = [
    const Center(child: Text('Home Screen')), // Placeholder for Home
    const Center(child: Text('Search Screen')),
    const Center(child: Text('Book Screen')), // Placeholder for Search
    const Followingcontent(),
  ];
  PremiumUserScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.lavender,
      bottomNavigationBar: BottomNavigationbarScreen(),
      body: Obx(() => _screen[controller.selectedIndex.value]),

    );
  }
}
