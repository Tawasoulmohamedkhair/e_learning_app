import 'package:e_learning_app/Theme/colors.dart';
import 'package:e_learning_app/Theme/fontstyle.dart';
import 'package:e_learning_app/views/component/button.dart';
import 'package:e_learning_app/views/signup/widget/text_field_form.dart';
import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class ContinueScreenSignup extends StatelessWidget {
  const ContinueScreenSignup({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: lavender,
        body: SafeArea(
          child: Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  height: 120,
                ),
                Text(
                  textAlign: TextAlign.center,
                  'Welcome!\nSign up to continue!',
                  style: fontsize25,
                ),
                SizedBox(
                  height: 100,
                ),
                textformfiled(Image.asset('assets/images/Rectangle.png'),
                    'ContinueScreenSignup'),
                SizedBox(
                  height: 20,
                ),
                textformfiled(Image.asset('assets/images/facebook1.png'),
                    ' Sign Up with Facebook'),
                SizedBox(
                  height: 20,
                ),
                Text('Or'),
                SizedBox(
                  height: 30,
                ),
                Container(
                  width: 331.px,
                  height: 53.px,
                  child: TextFormField(
                    decoration: InputDecoration(
                      fillColor: Colors.white,
                      filled: true,
                      label: Center(
                        child: Text(
                          'Sign up with email',
                        ),
                      ),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(50)),
                      labelStyle: fontsize15,
                    ),
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Text(
                    'By signing up you are agreed with our \nfriendly terms and condition.'),
                SizedBox(
                  height: 80,
                ),
                Text('Already have an account?'),
                ButtonScreen('Sign in', Colors.white, onTap: () {})
              ],
            ),
          ),
        ));
  }
}
