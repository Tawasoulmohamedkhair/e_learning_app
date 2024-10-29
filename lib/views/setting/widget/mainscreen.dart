import 'package:e_learning_app/controller/setting/bottomnavigationbar_controller.dart';
import 'package:e_learning_app/views/setting/UI/courses_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MainsScreen extends StatelessWidget {
  final NavigationController mainController = Get.put(NavigationController());

  final List<Widget> _screens = [
    Center(child: Text('Home Screen')), // Placeholder for Home
    Center(child: Text('Search Screen')), // Placeholder for Search
    ProfileStudentCourses(), // Profile Screen with TabBar
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _screens[mainController.currentIndex.value],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: mainController.currentIndex.value,
        // onTap: mainController.currentIndex.value,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'Search',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],
      ),
    );
  }
}
