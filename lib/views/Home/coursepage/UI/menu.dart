import 'package:flutter/material.dart';
import 'package:get/get_state_manager/get_state_manager.dart';

class MenuScreen extends GetView<MenuController> {
  const MenuScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        
        title: const Text("Menu"),
        centerTitle: true,
      ),
      body: const SafeArea(
          child: Center(
              child: Text(
        'Menu,',
        style: TextStyle(fontSize: 20),
      ))),
    );
  }
}