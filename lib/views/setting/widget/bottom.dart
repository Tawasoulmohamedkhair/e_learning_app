/*import 'package:e_learning_app/Theme/colors.dart';
import 'package:e_learning_app/controller/setting/bottomnavigationbar_controller.dart';
import 'package:e_learning_app/views/setting/UI/courses_screen.dart';
import 'package:e_learning_app/views/setting/widget/bottomnavigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class MyScreen extends StatelessWidget {
  final NavigationController controller = Get.put(NavigationController());

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      child: Column(
        children: [
          Expanded(
            child: Obx(() {
              switch (controller.currentIndex) {
                case 0:
                  return const Center(child: Text('Home Screen'));
                case 1:
                  return const Center(child: Text('Search Screen'));
                case 2:
                  return const Center(child: Text('Bookmarks Screen'));
                case 3:
                  return ProfileStudentCourses();
                default:
                  return const Center(child: Text('Unknown Screen'));
              }
            }),
          ),
          MyNavigationBar(
            items: [
              BottomNavigationBarItem(
                icon: Icon(Icons.home_sharp),
                label: 'Home',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.search),
                label: 'Search',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.bookmark),
                label: 'Bookmarks',
              ),
              BottomNavigationBarItem(
                icon: Row(
                  children: [
                    Container(
                        width: 30.w,
                        height: 40.h,
                        decoration: const BoxDecoration(
                            color: AppColor.bluecolor, shape: BoxShape.circle),
                        child: Icon(color: Colors.white, Icons.person)),
                    SizedBox(
                      width: 10,
                    ),
                    const Text('Profile'),
                  ],
                ),
                label: '',
              ),
            ],
            onTap: controller.onItemTapped,
          ),
        ],
      ),
    );
  }
}*/
