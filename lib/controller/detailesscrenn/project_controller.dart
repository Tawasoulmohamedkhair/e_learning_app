import 'package:get/get.dart';

import '../../model/home/projectmodel/projectmodel.dart';

class ProjectController extends GetxController {
  final List<Project> _projects = [
    Project(imageUrl: 'assets/images/unsplash.png'),
    Project(imageUrl: 'assets/images/Project 2.png'),
    Project(imageUrl: 'assets/images/unsplash_Am.png'),
    Project(imageUrl: 'assets/images/unsplash3.png')
  ];

  List<Project> get projects => _projects;

  void loadMoreProjects() {
    update();
  }
}
