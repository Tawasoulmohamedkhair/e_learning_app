import 'package:e_learning_app/Theme/colors.dart';
import 'package:e_learning_app/controller/detailesscrenn/navigationhome.dart';
import 'package:e_learning_app/views/setting/widget/profile_courses.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class ProfileStudentCourses extends StatelessWidget {
  final BottomNavigationController controller =
      Get.put(BottomNavigationController());
  ProfileStudentCourses({super.key});
  final List<Widget> _screens = [
   
    Center(child: Text('Home Screen')), // Placeholder for Home
    Center(child: Text('Search Screen')),
    Center(child: Text('Book Screen')), // Placeholder for Search
    Profilecourses(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     
      backgroundColor: AppColor.lavender,
      body: Obx(() => _screens[controller.selectedIndex.value]),
      bottomNavigationBar: BottomAppBar(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            MaterialButton(
              child: const Icon(Icons.home, color: Colors.black),
              onPressed: () => controller.changeTabIndex(0),
            ),
            
            MaterialButton(
              child: Icon(Icons.book, color: Colors.black),
              onPressed: () => controller.changeTabIndex(1),
            ),
            Row(
              children: [
                MaterialButton(
                  child: Icon(Icons.search, color: Colors.black),
                  onPressed: () => controller.changeTabIndex(2),
                ),
                
              ],
            ),
            Container(
              child: MaterialButton(
                padding: EdgeInsets.only(right: 10),
                child: Row(
                  children: [
                    Container(
                        width: 30.w,
                        height: 40.h,
                        decoration: const BoxDecoration(
                            color: AppColor.bluecolor, shape: BoxShape.circle),
                        child: const Icon(color: Colors.white, Icons.person)),
                    const SizedBox(
                      width: 10,
                    ),
                    const Text('Profile',
                        style: const TextStyle(color: Colors.black)),
                    
                  ],
                ),
                onPressed: () => controller.changeTabIndex(3),
              ),
            ),
            ],
          ),
      ),
    );
  }
}
