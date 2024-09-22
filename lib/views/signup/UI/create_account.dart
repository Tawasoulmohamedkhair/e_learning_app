import 'package:e_learning_app/Theme/colors.dart';
import 'package:e_learning_app/Theme/fontstyle.dart';
import 'package:e_learning_app/views/component/button.dart';
import 'package:e_learning_app/views/signup/widget/text_field_form.dart';
import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class CreateAccount extends StatelessWidget {
  const CreateAccount({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: lavender,
      body: SafeArea(
        child: Container(
          width: 420,
          height: 812,
          padding: EdgeInsets.only(top: 60, right: 20, left: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                height: 100,
              ),
              Image.asset('assets/images/Icons.png'),
              SizedBox(
                height: 20,
              ),
              Text(
                'Create an Account',
                style: fontsize25,
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                'A handful of model sentence structures',
                style: fontsize12w500,
              ),
              SizedBox(
                height: 20,
              ),
              textformfiled(
                  Image.asset('assets/images/Profile.png'), 'Username'),
              SizedBox(
                height: 20,
              ),
              textformfiled(
                  Image.asset('assets/images/Profile.png'), 'Email id'),
              SizedBox(
                height: 20,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    padding: EdgeInsets.only(left: 40),
                    width: 300.px,
                    height: 53.px,
                    child: TextFormField(
                      obscureText: false,
                      decoration: InputDecoration(
                        prefixIcon: Icon(Icons.remove_red_eye_outlined),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(50)),
                        labelText: 'Password',
                        labelStyle: fontsize15,
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Container(
                    width: 66,
                    height: 53,
                    decoration: BoxDecoration(
                        border: Border.all(color: blackcolor),
                        borderRadius: BorderRadius.circular(50)),
                    child: Image.asset('assets/images/Icon.png'),
                  )
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  Container(
                      height: 22.px,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(8),
                      )),
                  Row(
                    children: [
                      Text('I hereby agree to the '),
                      InkWell(
                        onTap: () {},
                        child: Text(
                          'terms of services ',
                          style: TextStyle(
                            color: bluecolor,
                          ),
                        ),
                      ),
                      Text('and'),
                      InkWell(
                          child: Text(
                        ' privacy policy',
                        style: TextStyle(
                          color: bluecolor,
                        ),
                      )),
                    ],
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              ButtonScreen('Create Account', bluecolor, onTap: () {}),
              SizedBox(
                height: 20,
              ),
              TextButton(
                onPressed: () {},
                child: Text('Already have an account? Sign in'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
