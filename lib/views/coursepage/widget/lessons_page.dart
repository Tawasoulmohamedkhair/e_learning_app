import 'package:e_learning_app/Theme/colors.dart';
import 'package:flutter/material.dart';

class LessonPage extends StatefulWidget {
  const LessonPage({super.key});

  @override
  State<LessonPage> createState() => _LessonPageState();
}

class _LessonPageState extends State<LessonPage> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        backgroundColor: lavender,
        body: const Center(
          child: Text('Lessons Page'),
        ));
  }
}
