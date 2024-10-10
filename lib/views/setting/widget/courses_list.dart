import 'package:e_learning_app/Theme/fontstyle.dart';
import 'package:e_learning_app/model/data/courser_data.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CourserListScreen extends StatelessWidget {
  const CourserListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20, right: 20, top: 10),
      child: SizedBox(
        width: 700.w,
        height: 700.h,
        child: ListView.builder(
          padding: const EdgeInsets.only(top: 10),
          scrollDirection: Axis.vertical,
          shrinkWrap: true,
          itemCount: courses_list.length,
          itemBuilder: (context, index) {
            final item = courses_list[index];
            return Container(
              width: 300.w,
              padding: const EdgeInsets.only(top: 5),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image.asset(
                    width: 80.w,
                    height: 92.h,
                    item.image,
                  ),
                  SizedBox(
                    width: 20.w,
                  ),
                  Expanded(
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            item.title,
                            style: AppFont.fontsize18,
                          ),
                          Text(
                            item.subtitle,
                            style: AppFont.fontsize12w400,
                          ),
                          SizedBox(
                            height: 5.h,
                          ),
                          Row(
                            children: [
                              item.icon,
                              Text(
                                item.text,
                                style: AppFont.fontsize12w500,
                              ),
                              item.icon1,
                              Text(
                                item.rating,
                                style: AppFont.fontsizew300,
                              )
                            ],
                          ),
                        ]),
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
