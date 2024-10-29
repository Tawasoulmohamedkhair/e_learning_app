import 'package:e_learning_app/controller/setting/course_controller.dart';
import 'package:e_learning_app/controller/setting/following_controller.dart';
import 'package:e_learning_app/controller/setting/project_controller.dart';
import 'package:e_learning_app/model/tab_model.dart';
import 'package:get/get.dart';

final ProjectsController projectControllers = Get.put(ProjectsController());
final CourseController courseControllers = Get.put(CourseController());
final FollowingController followingControllers = Get.put(FollowingController());

class TabBarController extends GetxController {
  final _tabBarData = TabBarData(
          projects: projectControllers.projects.length,
          courses: courseControllers.courses.length,
          following: followingControllers.Followers.length)
      .obs;
  TabBarData get tabBarData => _tabBarData.value;
  void updateData(int projects, int courses, int following) {
    _tabBarData.value = TabBarData(
      projects: projects,
      courses: courses,
      following: following,
    );
  }
}
