import 'package:flutter/material.dart';

class EnterYouDetails extends StatelessWidget {
  const EnterYouDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: SingleChildScrollView(
        child: Column(
          children: [
            Icon(Icons.arrow_back_ios),
            Text('Enter your details'),
          ],
        ),
      )),
    );
  }
}
