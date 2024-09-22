import 'package:e_learning_app/Theme/colors.dart';
import 'package:e_learning_app/Theme/fontstyle.dart';
import 'package:e_learning_app/views/component/button.dart';
import 'package:flutter/material.dart';

class SuccessfullySceenAccount extends StatelessWidget {
  const SuccessfullySceenAccount({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: lavender,
        body: SafeArea(
          child: Container(
            child: Column(
              children: [
                Column(children: [
                  Container(
                    height: 200,
                  ),
                  Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(
                              width: 40, height: 40, 'assets/images/stars.png'),
                          SizedBox(
                            width: 80,
                          ),
                          Image.asset(
                              color: Colors.red,
                              width: 60,
                              height: 40,
                              'assets/images/stars.png'),
                        ],
                      ),
                    ],
                  ),
                  Image.asset('assets/images/stars.png'),
                ]),
                SizedBox(
                  height: 40,
                ),
                Text(
                  'Account Created\nSuccessfully!',
                  style: fontsize25,
                ),
                SizedBox(
                  height: 40,
                ),
                Text(
                    "If you are going to use a passage of Lorem Ipsum,\n you need to be sure there isn't anything \nembarrassing.",
                    style: fontsize12w500),
                SizedBox(
                  height: 100,
                ),
                ButtonScreen('Forgot Password', bluecolor, onTap: () {})
              ],
            ),
          ),
        ));
  }
}
