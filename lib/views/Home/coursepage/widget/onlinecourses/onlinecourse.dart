import 'package:e_learning_app/Theme/colors.dart';
import 'package:e_learning_app/Theme/fontstyle.dart';
import 'package:e_learning_app/model/online_courses_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


class CourseList extends StatelessWidget {
  final Course course;

  const CourseList({required this.course});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(10),
      width: 321.w,
      height: 86.h,
      decoration: BoxDecoration(
          color: AppColor.bluecolor, borderRadius: BorderRadius.circular(28)),
      child: ListTile(
        leading: Container(
          width: 55,
          height: 55,
          decoration: BoxDecoration(
            image: DecorationImage(image: AssetImage(course.imagePath)),
          ),
        ),
        title: Text(
          course.name,
          style: AppFont.fontsize14,
        ),
        subtitle: Text(
          '${course.hours} hours, ${course.lessons} lessons',
          style: AppFont.fontsize11,
        ),
        trailing: Container(
          width: 100,
          child: OverflowBar(
            overflowSpacing: 0.8,
            spacing: 0.8,
          
            children: [
              Text(
                '${course.percent}%',
                style: AppFont.fontsize10,
              ),
              SizedBox(
                width: 10,
              ),
              Container(
                decoration:
                    const BoxDecoration(color: Colors.white, shape: BoxShape.circle),
                width: 20.w,
                height: 33.h,
                child: Image.asset(course.image1),
              )
            ],
          ),
        ),

      ),
    );
  }
}
