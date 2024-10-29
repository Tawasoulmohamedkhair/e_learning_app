// image_controller.dart
import 'package:e_learning_app/model/setting/project_model.dart';
import 'package:get/get.dart';

class ProjectsController extends GetxController {
  var projects = <ImageData>[
    ImageData(imagePath: 'assets/images/unsplash.png'),
    ImageData(imagePath: 'assets/images/unsplash3.png'),
    ImageData(imagePath: 'assets/images/unsplash_Am.png'),
  ].obs;
}
