import 'package:e_learning_app/model/courseemodel.dart';
import 'package:get/get.dart';

class CourseController extends GetxController {
  var course = Course(
    title: 'Product Design v1.0',
    price: 74.00,
    description:
        'Learn the basics of product design in this comprehensive course.',
    lessons: [
      Lesson(
        title: 'Welcome to the Course',
        duration: '6:10 mins',
        videoUrl: 'https://www.example.com/video1.mp4',
        isLocked: false,
      ),
      Lesson(
        title: 'Process Overview',
        duration: '5:10 mins',
        videoUrl: 'https://www.example.com/video2.mp4',
        isLocked: false,
      ),
      Lesson(
        title: 'Discovery',
        duration: '6:10 mins',
        videoUrl: 'https://www.example.com/video3.mp4',
        isLocked: true,
      ),
    ],
  ).obs;
}
