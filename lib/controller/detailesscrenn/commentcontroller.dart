import 'package:e_learning_app/Theme/assets_imge.dart';
import 'package:e_learning_app/model/home/comment/commentmodel.dart';
import 'package:get/get.dart';

class CommentController extends GetxController {
  final List<Comment> _comments = [
    Comment(
      img: AssetsImages.avatars,
      author: '@mouni',
      timestamp: '11 mins ago   .   Student',
      content: 'How to get better at line? I am really stuck in this step.',
      likes: 21,
    ),
    Comment(
      img: AssetsImages.avatars,
      author: '@simon',
      timestamp: '11 mins ago   .   Student',
      content: 'Can you tell me how can i upload img to cloud saas?',
      likes: 10,
    ),
  ];

  List<Comment> get comments => _comments;

  void addComment(String content) {
    update();
  }

  bool shouldShowButton(int index, bool isFirstList) {
    return isFirstList;
  }
}
