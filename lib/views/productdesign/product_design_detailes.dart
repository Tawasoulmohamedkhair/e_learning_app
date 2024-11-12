import 'package:e_learning_app/Theme/colors.dart';
import 'package:e_learning_app/Theme/fontstyle.dart';
import 'package:e_learning_app/model/productdesign/product_designmodel.dart';
import 'package:e_learning_app/views/Home/coursepage/UI/CourseScreen/online_courses_screen.dart';
import 'package:e_learning_app/views/Home/coursepage/UI/home.dart';
import 'package:e_learning_app/views/Home/coursepage/widget/productdesign/bottom_container.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:video_player/video_player.dart';
import '../../controller/productdesign/producidesign.dart';

class ProductDesignDetaile extends StatelessWidget {
  final videoPlayerControllerWrapper = Get.put(VideoPlayerControllerWrapper());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     // backgroundColor: AppColor.lavender,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 30,),
         IconButton(
            onPressed: () {
              Get.off(() => CoursesScreen());
            },
            icon: Icon(size: 30, color: Colors.black, Icons.arrow_back_ios),
          ),
          // Video Player Section
          Container(
            height: 300,
            color: Colors.grey,
            child: GetBuilder<VideoPlayerControllerWrapper>(
              builder: (_) => GestureDetector(
                onTap: () {
                  if (_.videoController.value?.value.isPlaying == true) {
                    _.videoController.value?.pause();
                  } else {
                    _.videoController.value?.play();
                  }
                },
                child: _.videoController.value?.value.isInitialized == true
                    ? Column(
                        children: [
                           
                          SizedBox(
                            height: 200,
                            child: VideoPlayer(_.videoController.value!),
                          ),
                          SizedBox(height: 12),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              ValueListenableBuilder(
                                valueListenable: _.videoController.value!,
                                builder:
                                    (context, VideoPlayerValue value, child) {
                                  return Text(
                                    _.videoDuration(value.position),
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 20),
                                  );
                                },
                              ),
                              IconButton(
                                onPressed: () =>
                                    _.videoController.value!.value.isPlaying
                                        ? _.videoController.value!.pause()
                                        : _.videoController.value!.play(),
                                icon: Icon(
                                  _.videoController.value!.value.isPlaying
                                      ? Icons.pause
                                      : Icons.play_arrow,
                                  color: Colors.white,
                                  size: 40,
                                ),
                              ),
                              Expanded(
                                child: SizedBox(
                                  child: VideoProgressIndicator(
                                    colors: VideoProgressColors(
                                        playedColor: Colors.black),
                                    _.videoController.value!,
                                    allowScrubbing: true,
                                    padding: EdgeInsets.symmetric(
                                        vertical: 0, horizontal: 12),
                                  ),
                                ),
                              ),
                              IconButton(
                                icon: Icon(
                                  Icons.fullscreen,
                                  color: Colors.white,
                                  size: 30,
                                ),
                                onPressed: videoPlayerControllerWrapper
                                    .toggleFullscreen,
                              ),
                              IconButton(
                                  onPressed: videoPlayerControllerWrapper
                                      .exitFullscreen,
                                  icon: Icon(
                                      color: Colors.white,
                                      size: 30,
                                      Icons.close))
                            ],
                          ),
                        ],
                      )
                    : Center(
                        child: CircularProgressIndicator(
                        backgroundColor: Colors.red,
                      )),
              ),
            ),
          ),

          SizedBox(
            height: 30,
          ),
          Expanded(
            child: Container(
              //padding: EdgeInsets.all(20),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30.r),
                    topRight: Radius.circular(30.r),
                  )),
              child: Column(
                children: [
                 
                  Container(
                    height: 400,
                    child: ListView.builder(
                      itemCount: videos.length,
                      itemBuilder: (context, index) {
                        final video = videos[index];
                        return ListTile(
                          leading: Text('0${index + 1}'),
                          title: Text(video.title),
                          subtitle: Text(video.duration),
                          trailing: video.isLocked
                              ? IconButton(
                                  onPressed: () => videoPlayerControllerWrapper
                                      .toggleVideoLock(index),
                                  icon: Container(
                                      height: 44,
                                      width: 44,
                                      decoration: BoxDecoration(
                                          shape: BoxShape.circle,
                                          color: Colors.blue.shade200),
                                      child: Icon(
                                          color: Colors.white,
                                          size: 20,
                                          Icons.lock_open)),
                                )
                              : IconButton(
                                  onPressed: () => videoPlayerControllerWrapper
                                      .playVideo(index),
                                  icon: Container(
                                      width: 44,
                                      height: 44,
                                      decoration: BoxDecoration(
                                          shape: BoxShape.circle,
                                          color: Colors.blue),
                                      child: Icon(
                                          size: 20,
                                          color: Colors.white,
                                          Icons.play_arrow)),
                                ),
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),
          bottomcontainer(
              AppColor.bluecolor,
              AppColor.lavender,
              text1: 'Buy Now',
              AppFont.fontsize14,
              color: AppColor.lavender),
        ],
      ),
    );
  }
}
