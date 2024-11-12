// course_controller.dart
import 'package:e_learning_app/model/setting/courses_model.dart';
import 'package:get/get.dart';

class CourseController extends GetxController {
  var courses = <CourseModel>[
    CourseModel(
      title: 'Adobe Illustrator for all beginner artists',
      author: 'Samule Doe',
      students: '4k',
      rating: 4.7,
      imageUrl: 'assets/images/img1.png',
    ),
    CourseModel(
      title: 'Digital illustration technique for Procreate',
      author: 'Sarrah Merry',
      students: '2k',
      rating: 4.0,
      imageUrl: 'assets/images/unsplash_G.png',
    ),
    CourseModel(
      title: 'Learn how to draw cartoon faces in easy way!',
      author: 'Sarrah Merry',
      students: '1k',
      rating: 4.2,
      imageUrl: 'assets/images/img2.png',
    ),
    CourseModel(
      title: 'Sketchbook essentials for everyone!',
      author: 'Sarrah Merry',
      students: '2k',
      rating: 4.0,
      imageUrl: 'assets/images/img.png',
    ),
  ].obs;
}
