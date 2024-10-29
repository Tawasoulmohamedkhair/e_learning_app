import 'package:get/get.dart';

import '../../model/home/overviewsection/overviewmodel.dart';

class OverviewController extends GetxController {
  var selectedIndex = 0.obs;

  var course = OverView(
    introduction: 'Introduction',
    details:
        'Ipsum quam imperdiet mollis massa bibendum odio vitae in vehicula augue ullamcorper eget a ultrices amet amet, arcu at sem et egestassaf a  facilisi a, diam integer velit, sed gravida sed eu',
    subdetails:
        'Tllamcorper eget a ultrices amet amet, arcu at sem et egestassaf a  facilisi a, diam integer velit, sed gravida sed eu',
  ).obs;

  // Function to change tabs
  void changeTab(int index) {
    selectedIndex.value = index;
  }
}
