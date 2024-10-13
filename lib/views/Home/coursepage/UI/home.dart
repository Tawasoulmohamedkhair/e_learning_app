import 'package:e_learning_app/controller/onlinecourse/bottomnavigation_controller.dart';
import 'package:e_learning_app/views/Home/coursepage/UI/books.dart';
import 'package:e_learning_app/views/Home/coursepage/UI/menu.dart';
import 'package:e_learning_app/views/Home/coursepage/UI/CourseScreen/onlinecoursdetails.dart';
import 'package:e_learning_app/views/Home/coursepage/UI/search.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeScreen extends StatelessWidget {
  final BottomNavController controller = Get.put(BottomNavController());

  final List<Widget> pages = [
    OnlineCourseDetails(),
    const Books(),
    const SearchScreen(),
    const MenuScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Obx(() {
      return Scaffold(
        body: pages[controller.selectedIndex.value], // Show the selected page
        bottomNavigationBar: BottomAppBar(
          color: Colors.blue,
          shape: CircularNotchedRectangle(), // To create notch for FAB
          notchMargin: 8.0, // Margin around FAB
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              MaterialButton(
                child: Column(
                  children: [
                    Icon(Icons.home, color: Colors.white),
                    Text('Home', style: TextStyle(color: Colors.white)),
                  ],
                ),
                onPressed: () => controller.changeTabIndex(0),
              ),
              MaterialButton(
                child: Column(
                  children: [
                    Icon(Icons.book, color: Colors.white),
                    Text('Books', style: TextStyle(color: Colors.white)),
                  ],
                ),
                onPressed: () => controller.changeTabIndex(1),
              ),
              SizedBox(width: 40), // Spacer for FAB in the center
              Row(
                children: [
                  MaterialButton(
                    child: Column(
                      children: [
                        Icon(Icons.search, color: Colors.white),
                        Text('Search', style: TextStyle(color: Colors.white)),
                      ],
                    ),
                    onPressed: () => controller.changeTabIndex(2),
                  ),
                ],
              ),
              MaterialButton(
                child: Column(
                  children: [
                    Icon(Icons.menu, color: Colors.white),
                    Text('Menu', style: TextStyle(color: Colors.white)),
                  ],
                ),
                onPressed: () => controller.changeTabIndex(3),
              ),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          shape: const CircleBorder(),
          backgroundColor: Colors.blue,
          onPressed: () {},
          child: Icon(color: Colors.white, Icons.add),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      );
    });
  }
}
