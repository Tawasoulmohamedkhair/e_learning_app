import 'package:e_learning_app/Theme/assets_imge.dart';
import 'package:e_learning_app/model/online_courses_model.dart';
import 'package:get/get.dart';

/*class OnlineCourseController extends GetxController {
  AssetsImages images = Get.put(AssetsImages());

  final List<OnlineCoursesModel> onlinecourseslist = [
    OnlineCoursesModel(
        image: AssetsImages.Adobe,
        percent: 'XD Prototyping',
        hours: 10,
        lessons: 19,
        percent: 25,
        image1: AssetsImages.Polygon),
    OnlineCoursesModel(
        image: AssetsImages.Sketch,
        percent: 'Sketch',
        hours: 10,
        lessons: 19,
        percent: 25,
        image1: AssetsImages.bluecircle),
    OnlineCoursesModel(
      image: AssetsImages.AfterEffects,
      percent: 'After Effects',
      hours: 10,
      lessons: 19,
      percent: 25,
      image1: AssetsImages.bluecircle,
    ),
    OnlineCoursesModel(
      image: AssetsImages.Figma,
      percent: 'Figma',
      hours: 10,
      lessons: 19,
      percent: 25,
      image1: AssetsImages.bluecircle,
    ),
    OnlineCoursesModel(
      image: AssetsImages.Photoshop,
      percent: 'Adobe Photoshop.',
      hours: 10,
      lessons: 19,
      percent: 25,
      image1: AssetsImages.bluecircle,
    ),
  ];
}*/
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
  ].obs; // observable list
}
