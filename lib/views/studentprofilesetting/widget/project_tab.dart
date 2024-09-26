import 'package:e_learning_app/model/data/project_list.dart';
import 'package:flutter/material.dart';

class ProjectTab extends StatefulWidget {
  const ProjectTab({super.key});

  @override
  State<ProjectTab> createState() => _ProjectTabState();
}

class _ProjectTabState extends State<ProjectTab> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 500,
      child: GridView(
        scrollDirection: Axis.vertical,
        padding: const EdgeInsets.all(8.0),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
        ),
        children: imageDataList.map((imageData) {
          return Container(
            child: Column(
              children: [
                Image.asset(imageData.imagePath),
              ],
            ),
          );
        }).toList(),
      ),
    );
  }
}
