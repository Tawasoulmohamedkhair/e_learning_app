import 'package:e_learning_app/model/setting/following_model.dart';
import 'package:get/get.dart';

class FollowingController extends GetxController {
  final List<FollowingModel> Followers = [
    FollowingModel(
        name: 'Sammuel Jonass',
        username: '@jdoe',
        avatarUrl: 'assets/images/mens.png'),
    FollowingModel(
        name: 'Mohammad Salah',
        username: '@jdoe',
        avatarUrl: 'assets/images/men.png'),
    FollowingModel(
        name: 'Sammuel Jonass',
        username: '@jdoe',
        avatarUrl: 'assets/images/Avatar.png'),
    FollowingModel(
        name: 'Sammuel Jonass',
        username: '@jdoe',
        avatarUrl: 'assets/images/avata.png'),
    FollowingModel(
        name: 'Sammuel Jonass',
        username: '@jdoe',
        avatarUrl: 'assets/images/Avatr.png'),
    FollowingModel(
        name: 'Sammuel Jonass',
        username: '@jdoe',
        avatarUrl: 'assets/images/Avatars.png'),
  ].obs;

  void updateUsers(List<FollowingModel> newUsers) {}
}
