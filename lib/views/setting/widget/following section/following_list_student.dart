import 'package:e_learning_app/Theme/colors.dart';
import 'package:e_learning_app/controller/setting/following_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

/*class FollowingStudentListScreen extends StatelessWidget {
  final TabBarController controller = Get.put(TabBarController());
  FollowingStudentListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Container(
            height: 500,
            child: ListView.builder(
                padding: const EdgeInsets.only(top: 30),
                itemCount: followingList.length,
                itemBuilder: (context, index) {
                  final items = followingList[index];
                  return Container(
                    padding: const EdgeInsets.only(top: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Image.asset(
                          items.image,
                          width: 47.w,
                          height: 42.h,
                        ),
                        Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(items.title, style: AppFont.fontsize15),
                              Text(items.subtitle,
                                  style: AppFont.fontsizew40012)
                            ]),
                        Container(
                          width: 77.w,
                          height: 41.h,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20.r),
                            color: Colors.white,
                          ),
                          child: Center(
                            child:
                                Text(items.text, style: AppFont.fontsizew50014),
                          ),
                        )
                      ],
                    ),
                  );
                }),
          ),
        ],
      ),
    );
  }
}*/
class FollowingListScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final controller = Get.put(FollowingController());

    return Scaffold(
      backgroundColor: AppColor.lavender,
      body: Obx(() {
        return ListView.builder(
          itemCount: controller.Followers.length,
          itemBuilder: (context, index) {
            final follower = controller.Followers[index];
            return ListTile(
              leading: CircleAvatar(
                backgroundImage: AssetImage(follower.avatarUrl),
              ),
              title: Text(follower.name),
              subtitle: Text(follower.username),
              trailing: ElevatedButton(
                onPressed: () {},
                child: Text('Follow'),
              ),
            );
          },
        );
      }),
    );
  }
}
