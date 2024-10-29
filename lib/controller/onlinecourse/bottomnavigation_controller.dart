import 'package:e_learning_app/views/setting/UI/courses_screen.dart';
import 'package:get/get.dart';

class BottomNavController extends GetxController {
  var selectedIndex = 0.obs;

  void changeTabIndex(int index) {
    selectedIndex.value = index;
  }

  GoToProfileScreen() {
    Get.to(ProfileStudentCourses);
  }

  GoToProfileSettingScreen() {}
}
