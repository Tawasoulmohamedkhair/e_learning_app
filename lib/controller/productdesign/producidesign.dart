import 'package:e_learning_app/model/productdesign/product_designmodel.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:video_player/video_player.dart';


class VideoPlayerControllerWrapper extends GetxController {
    var isFullscreen = false.obs;

  final Rx<VideoPlayerController?> videoController = Rx(null);
  final RxInt currentIndex = RxInt(0);
  int _currentIndex = 0;
  late VideoPlayerController _videoPlayerController;

  Future<void> initializeVideoPlayer() async {
    _videoPlayerController = VideoPlayerController.asset(videos[_currentIndex].url);

    await _videoPlayerController.initialize();
    update();
  }

  void playNextVideo() {
    _currentIndex = (_currentIndex + 1) % videos.length;
    initializeVideoPlayer();
  }
    void playVideo(int index) {
    if (index < 0 || index >= videos.length) return;

    videoController.value?.pause();
    currentIndex.value = index;

    videoController.value = VideoPlayerController.asset(videos[index].url)
      ..initialize().then((_) {
        update(); // Update the UI to show the video player
      });
  }

  void toggleVideoLock(int index) {
    videos[index].isLocked = !videos[index].isLocked;
    update();
  }

  String videoDuration(Duration duration) {
    String twoDigits(int n) => n.toString().padLeft(2, '0');
    final hours = twoDigits(duration.inHours);
    final minutes = twoDigits(duration.inMinutes.remainder(60));
    final seconds = twoDigits(duration.inSeconds.remainder(60));
    return [if (duration.inHours > 0) hours, minutes, seconds].join(':');
  }

  @override
  void onInit() {
    super.onInit();
    playVideo(0); // Play the first video by default
  }

  @override
  void onClose() {
    videoController.value?.dispose();
    super.onClose();
  }
  
void toggleFullscreen() {
    bool _isFullscreen = false;

    _isFullscreen = !_isFullscreen;
    SystemChrome.setPreferredOrientations([DeviceOrientation.landscapeLeft]);
  }
  void exitFullscreen() {
    isFullscreen.value = false;
    SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
    Get.back();
  }
}
