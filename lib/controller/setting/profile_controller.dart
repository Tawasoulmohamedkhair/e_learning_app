import 'package:e_learning_app/model/setting/profilemodel.dart';
import 'package:get/get.dart';

class ProfileController extends GetxController {
  final Profile = ProfileModel(
          username: '@isayef',
          bio: 'Just a simple guy who loves to do\n something new and fun! 😋',
          profileImageUrl: 'assets/images/Profile Avatar.png')
      .obs;
}
