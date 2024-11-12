import 'package:get/get.dart';
class NavigationController extends GetxController {
  var currentIndex = 0.obs;
  void onItemTapped(int index) {
    currentIndex = index.obs;
  }
}
