import 'package:e_learning_app/Theme/assets_imge.dart';
import 'package:e_learning_app/model/home/feddback_model/feedbackmodel.dart';
import 'package:get/get.dart';

class FeedbackController extends GetxController {
  var reviewsCount = 4.7.obs;
  var studentsCount = 753.obs;
  var feedbacks = <Feedback>[
    Feedback(
        username: '@mannes_sammy',
        time: '31 mins ago',
        comment:
            'Sed suspendisse elit sit trist gristi queget quis tristique pulectus!',
        img: AssetsImages.avatars), // Sample avatar
    Feedback(
        username: '@justin',
        time: '01 hour ago',
        comment: 'Great suspendisse elit sit trist gristi',
        img: AssetsImages.avatar),
    Feedback(
        username: '@mouni',
        time: '11 hour ago',
        comment: 'Flit sit trist gristi do musch!',
        img: AssetsImages.avatar),
  ].obs;

  // Function to load more feedbacks
  void loadMoreFeedback() {
    feedbacks.addAll([
      Feedback(
          username: '@john_doe',
          time: '12 hours ago',
          comment: 'Additional feedback added here!',
          img: AssetsImages.avatars),
      Feedback(
          username: '@alice',
          time: '14 hours ago',
          comment: 'Lorem ipsum dolor sit amet.',
          img: AssetsImages.avatar),
    ]);
  }
}
