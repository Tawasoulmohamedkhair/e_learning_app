import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SearchScreen extends GetView<SearchController> {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Search"),
        //  centerTitle: true,
      ),
      body: Center(
          child: Text(
        'Search',
        style: TextStyle(fontSize: 20, color: Colors.red),
      )),
    );
  }
}
