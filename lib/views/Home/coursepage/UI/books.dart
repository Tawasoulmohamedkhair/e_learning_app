import 'package:flutter/material.dart';

class Books extends StatelessWidget {
  const Books({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Books"),
        centerTitle: true,
      ),
      body: const SafeArea(
          child: Center(
              child: const Text(
        'Books',
        style: TextStyle(fontSize: 20),
      ))),
    );
  }
}
