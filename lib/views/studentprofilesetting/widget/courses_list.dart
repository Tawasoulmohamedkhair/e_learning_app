import 'package:e_learning_app/Theme/fontstyle.dart';
import 'package:e_learning_app/model/data/courser_data.dart';
import 'package:flutter/material.dart';

class CourserListScreen extends StatelessWidget {
  const CourserListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20, right: 20, top: 10),
      child: SizedBox(
        width: 700,
        height: 700,
        child: ListView.builder(
          padding: EdgeInsets.only(top: 10),
          scrollDirection: Axis.vertical,
          shrinkWrap: true,
          itemCount: courses_list.length,
          itemBuilder: (context, index) {
            final item = courses_list[index];
            return Container(
              width: 300,
              padding: EdgeInsets.only(top: 5),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image.asset(
                    width: 80,
                    height: 92,
                    item.image,
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  Expanded(
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            item.title,
                            style: fontsize18,
                          ),
                          Text(
                            item.subtitle,
                            style: fontsize12w400,
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          Row(
                            children: [
                              item.icon,
                              Text(
                                item.text,
                                style: fontsize12w500,
                              ),
                              item.icon1,
                              Text(
                                item.rating,
                                style: fontsizew300,
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
