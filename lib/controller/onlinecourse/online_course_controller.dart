import 'package:e_learning_app/Theme/assets_imge.dart';
import 'package:e_learning_app/model/online_courses_model.dart';
import 'package:get/get.dart';

class CoursesController extends GetxController {
  var courses = <Course>[
    Course(
      name: 'XD Prototyping',
      imagePath: AssetsImages.Adobe,
      percent: 25,
      image1: AssetsImages.triangle,
      hours: 10,
      lessons: 19,
    ),
    Course(
      name: 'Sketch',
      imagePath: AssetsImages.Sketch,
      percent: 25,
      image1: AssetsImages.bluecircle,
      hours: 10,
      lessons: 19,
    ),
    Course(
      name: 'After Effects',
      imagePath: AssetsImages.AfterEffects,
      percent: 25,
      image1: AssetsImages.bluecircle,
      hours: 10,
      lessons: 19,
    ),
    Course(
      name: 'Figma',
      imagePath: AssetsImages.Figma,
      percent: 25,
      image1: AssetsImages.bluecircle,
      hours: 10,
      lessons: 19,
    ),
    Course(
      name: 'Adobe Photoshop',
      imagePath: AssetsImages.Photoshop,
      percent: 25,
      image1: AssetsImages.bluecircle,
      hours: 10,
      lessons: 19,
    ),
    
  ].obs;

  void update([List<Object>? ids, bool condition = true]) {
    super.update(ids, condition);
    update();
  }
}
