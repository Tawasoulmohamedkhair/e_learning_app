import 'package:get/get.dart';

class OnboardingController extends GetxController {
  int currentPage = 4;

  setPage(int index) {
    currentPage = index;
    update();
  }

  currentstep(int index) {
    currentPage / 4;
    update();
  }
}
