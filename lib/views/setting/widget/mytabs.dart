import 'package:e_learning_app/controller/setting/tab_controller.dart';
import 'package:e_learning_app/views/setting/widget/courses_list.dart';
import 'package:e_learning_app/views/setting/widget/following%20section/following_list_student.dart';
import 'package:e_learning_app/views/setting/widget/projectsection/project_tab.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class TabBarScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final TabBarController controller = Get.put(TabBarController());

    return DefaultTabController(
      length: 3,
      child: Container(
        height: 400,
        child: Column(
          children: [
            TabBar(
              tabs: [
                Tab(
                  child: Container(
                    height: 100,
                    child: Column(
                      children: [
                        Text('${controller.tabBarData.projects}'),
                        Text('Projects'),
                      ],
                    ),
                  ),
                ),
                Tab(
                  child: Container(
                    height: 100,
                    child: Column(
                      children: [
                        Text('(${controller.tabBarData.courses})'),
                        Text('Courses')
                      ],
                    ),
                  ),
                ),
                Tab(
                  child: Container(
                    child: Column(
                      children: [
                        Text(' (${controller.tabBarData.following})'),
                        Text('Following'),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            Expanded(
              child: TabBarView(
                children: [
                  // Project view
                  ProjectTab(),
                  // Courses view
                  CourseListScreen(),
                  // Following view
                  FollowingListScreen(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
