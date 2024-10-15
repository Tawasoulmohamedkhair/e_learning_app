import 'package:e_learning_app/Theme/assets_imge.dart';
import 'package:e_learning_app/model/online_courses_model.dart';
import 'package:get/get.dart';

class CoursesController extends GetxController {
  var courses = <Course>[
    Course(
      name: 'XD Prototyping',
      imagePath: AssetsImages.adobe,
      percent: 25,
      image1: AssetsImages.triangle,
      hours: 10,
      lessons: 19,
    ),
    Course(
      name: 'Sketch',
      imagePath: AssetsImages.sketch,
      percent: 25,
      image1: AssetsImages.bluecircle,
      hours: 10,
      lessons: 19,
    ),
    Course(
      name: 'After Effects',
      imagePath: AssetsImages.afterEffects,
      percent: 25,
      image1: AssetsImages.bluecircle,
      hours: 10,
      lessons: 19,
    ),
    Course(
      name: 'Figma',
      imagePath: AssetsImages.figma,
      percent: 25,
      image1: AssetsImages.bluecircle,
      hours: 10,
      lessons: 19,
    ),
    Course(
      name: 'Adobe Photoshop',
      imagePath: AssetsImages.photoshop,
      percent: 25,
      image1: AssetsImages.bluecircle,
      hours: 10,
      lessons: 19,
    ),
    
  ].obs;

  @override
  void update([List<Object>? ids, bool condition = true]) {
    super.update(ids, condition);
    update();
  }
}
