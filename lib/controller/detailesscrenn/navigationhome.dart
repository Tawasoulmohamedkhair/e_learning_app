import 'package:get/get.dart';

class BottomNavigationController extends GetxController {
  var selectedIndex = 3.obs;

  void changeTabIndex(int index) {
    selectedIndex.value = index;
  }
}
