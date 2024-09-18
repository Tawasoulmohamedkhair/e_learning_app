import 'package:e_learning_app/Theme/colors.dart';
import 'package:e_learning_app/Theme/fontstyle.dart';

import 'package:e_learning_app/views/coursepage/widget/videos/subdetails_of_videos.dart';
import 'package:flutter/material.dart';
//the screen of detailes of videos the first section

Widget Detailesofvideos() {
  return SafeArea(
    child: Material(
      color: lavender,
      child: Container(
        padding: const EdgeInsets.only(top: 20),
        width: 700,
        child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Icon(Icons.arrow_back_ios_new),
                  Text(
                    'Details',
                    style: fontsize18,
                  ),
                  Image.asset(
                    'assets/images/Book.png',
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Image.asset(
                'assets/images/Playback.png',
                width: double.infinity,
                fit: BoxFit.contain,
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                  padding: const EdgeInsets.only(
                    left: 20,
                  ),
                  color: lavender,
                  width: 270,
                  height: 800,
                  child: SingleChildScrollView(
                      child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        padding:
                            const EdgeInsets.only(left: 10, top: 10, right: 10),
                        width: 80,
                        height: 40,
                        color: bluecolor,
                        child: Text(
                          textAlign: TextAlign.center,
                          'HOT',
                          style: fontsize12,
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Row(
                        children: [
                          Container(
                            width: 38,
                            height: 38,
                            child: CircleAvatar(
                              radius: 20,
                              child: Image.asset('assets/images/Avatar.png'),
                            ),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          Text(
                            'Anny Morriarty',
                            style: fontsize18,
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Container(
                        width: 270,
                        height: 54,
                        child: Text(
                          'Comic drawing essential\n for everyone!',
                          style: fontsize21,
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Container(
                        width: 260,
                        child: Column(
                          children: [
                            Row(
                              children: [
                                subdetailes(
                                  Image.asset('assets/images/Frame2.png'),
                                  '1.hour 30 min',
                                ),
                                const SizedBox(
                                  width: 40,
                                ),
                                subdetailes(
                                    Image.asset('assets/images/video.png'),
                                    '12 Lessons'),
                              ],
                            ),
                            const SizedBox(
                              height: 15,
                            ),
                            Row(
                              children: [
                                subdetailes(
                                    Image.asset('assets/images/Frame3.png'),
                                    '4.7  (753)'),
                                const SizedBox(
                                  width: 60,
                                ),
                                subdetailes(
                                    Image.asset('assets/images/Frame2.png'),
                                    '2K  students'),
                              ],
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 40,
                      ),
                      Text(
                        'Lectus vitae lorem luctus mostie vitae mbi curabitur magna \n facilisis turpis nullam nibh gfas ultricies purus molestie quis\n impert id agger adipiscing molestie auctor arcu ium  atd eget \n  faucibus quis id!',
                        style: fontsize12w400,
                      ),
                    ],
                  )))
            ]),
      ),
    ),
  );
}
