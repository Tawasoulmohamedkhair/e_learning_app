import 'package:flutter/material.dart';

class CoursesModel {
  final String image;
  final String title;
  final String subtitle;
  final Icon icon;
  final String text;
  final Icon icon1;
  final String rating;
  CoursesModel(
    this.icon,
    this.text,
    this.icon1, {
    required this.image,
    required this.title,
    required this.subtitle,
    required this.rating,
  });
}
