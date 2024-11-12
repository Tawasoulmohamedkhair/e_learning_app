import 'package:e_learning_app/Theme/assets_imge.dart';
import 'package:get/get.dart';

import '../../model/home/videosectionmodel/video_section_model.dart';

class CourseControllers extends GetxController {
  var course = Course(
    img: AssetsImages.avatar,
    author: 'Anny Morriarty',
    title: 'Comic drawing essential for everyone!',
    duration: '1 hour 30 min',
    lessons: '12 Lessons',
    rating: '4.7 (753)',
    students: '2k students',
    videoUrl: 'https://www.example.com/video.mp4',
  ).obs;
  @override
  void onClose() {
    super.onClose();
  }
}
