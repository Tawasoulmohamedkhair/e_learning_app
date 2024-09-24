import 'package:e_learning_app/views/coursepage/UI/productdesign.dart';
import 'package:e_learning_app/views/coursepage/widget/productdesign/course_container.dart';
import 'package:video_player/video_player.dart';
import 'package:flick_video_player/flick_video_player.dart';
import 'package:flutter/material.dart';

//the screen of the video of productDesign
class ProductDesigndetails extends StatefulWidget {
  const ProductDesigndetails({super.key});

  @override
  State<ProductDesigndetails> createState() => _ProductDesigndetailsState();
}

class _ProductDesigndetailsState extends State<ProductDesigndetails> {
  late FlickManager flickManager;
  @override
  void initState() {
    super.initState();

    flickManager = FlickManager(
        videoPlayerController: VideoPlayerController.networkUrl(Uri.parse(
            'https://flutter.github.io/assets-for-api-docs/assets/videos/bee.mp4')));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white.withOpacity(0.9),
        appBar: AppBar(
          backgroundColor: Color(0xffA1AAAE),
        ),
        body: SafeArea(
            child: Container(
          height: 1500,
          color: Color(0xffA1AAAE),
          child: SingleChildScrollView(
            child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: InkWell(
                        onTap: () {
                          Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => ProductDesginScreen()));
                        },
                        child: Icon(Icons.arrow_back_ios)),
                  ),
                  Center(
                    child: AspectRatio(
                        aspectRatio: 12 / 7,
                        child: FlickVideoPlayer(flickManager: flickManager)),
                  ),
                  coursecontainer(Colors.white)
                ]),
          ),
        )));
  }
}
