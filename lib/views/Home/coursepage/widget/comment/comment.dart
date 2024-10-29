
import 'package:e_learning_app/Theme/assets_imge.dart';
import 'package:e_learning_app/Theme/colors.dart';
import 'package:e_learning_app/Theme/fontstyle.dart';
import 'package:e_learning_app/controller/detailesscrenn/commentcontroller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class CommentListScreen extends StatelessWidget {
  late Function ontap;
  final CommentController commentController = Get.put(CommentController());

  final int index = 0;

  CommentListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final comment = commentController.comments[index];

    commentController.shouldShowButton(index, false);
    return Scaffold(
      backgroundColor: AppColor.lavender,
      body: Container(
        padding: EdgeInsets.only(left: 10, right: 10),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  '5 Comments',
                  style: AppFont.fontsize16,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextButton(
                    onPressed: () {},
                    style: TextButton.styleFrom(
                      backgroundColor: AppColor.sonicSilver,
                    ),
                    child: Text(
                      'AddComment',
                      style: AppFont.fontsize14,
                    ),
                  ),
                )
              ],
            ),
            Container(
                height: 200,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ListTile(
                      title: Text(
                        comment.author,
                        style: AppFont.fontsize15w400,
                      ),
                      subtitle: OverflowBar(
                        children: [
                          Text(
                            comment.timestamp,
                            style: AppFont.fontsize12w400,
                          ),
                          Text(
                            comment.content,
                            style: AppFont.fontsize12w400,
                          ),
                        ],
                      ),
                      leading: CircleAvatar(
                        child: Image.asset(comment.img),
                      ),
                      onTap: () {},
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 60),
                          child: Row(
                            children: [
                              InkWell(
                                onTap: () {},
                                child: Text(
                                  'Liked',
                                  style: AppFont.fontweghit14,
                                ),
                              ),
                              SizedBox(
                                width: 20.w,
                              ),
                              Text(
                                'Reply',
                                style: AppFont.fontweghit400,
                              ),
                            ],
                          ),
                        ),
                        Spacer(),
                        Row(
                          children: [
                            Image.asset(AssetsImages.like),
                            SizedBox(
                              width: 10.w,
                            ),
                            Text(
                              '${comment.likes}',
                              style: AppFont.fontweghit14,
                            ),
                          ],
                        ),
                      ],
                    ),
                    Container(
                      child: TextButton(
                          onPressed: () {},
                          style: TextButton.styleFrom(
                            backgroundColor: AppColor.sonicSilver,
                          ),
                          child: Text(
                            'view 1replies',
                            style: AppFont.fontsize14,
                          )),
                    )
                  ],
                )),
            ListTile(
              title: Text(
                comment.author,
                style: AppFont.fontsize15w400,
              ),
              subtitle: OverflowBar(
                children: [
                  Text(
                    comment.timestamp,
                    style: AppFont.fontsize12w400,
                  ),
                  Text(
                    comment.content,
                    style: AppFont.fontsize12w400,
                  ),
                ],
              ),
              leading: CircleAvatar(
                child: Image.asset(comment.img),
              ),
              onTap: () {},
            ),
            Row(
              //  crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Padding(
                  padding: const EdgeInsets.only(
                    left: 60,
                  ),
                  child: Row(
                    children: [
                      InkWell(
                        onTap: () {},
                        child: Text(
                          'Liked',
                          style: AppFont.fontweghit14,
                        ),
                      ),
                      SizedBox(
                        width: 20.w,
                      ),
                      Text(
                        'Reply',
                        style: AppFont.fontweghit400,
                      ),
                    ],
                  ),
                ),
                Spacer(),
                Image.asset(AssetsImages.like),
                SizedBox(
                  width: 10.w,
                ),
                Text(
                  '${comment.likes}',
                  style: AppFont.fontweghit14,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

