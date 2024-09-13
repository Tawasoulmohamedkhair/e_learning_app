import 'dart:async';

import 'package:e_learning_app/Theme/colors.dart';
import 'package:e_learning_app/screens/splash/widget/splash_screen_content.dart';
import 'package:e_learning_app/screens/splash/Ui/home_screen.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  void initState() {
    super.initState();
    Timer(
        Duration(seconds: 3),
        () => Navigator.pushReplacement(context,
            MaterialPageRoute(builder: (context) => SplashOnlineLearning())));
  }

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Lavender,
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            color: Lavender,
            height: height,
            width: width,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Align(
                        alignment: const Alignment(-0.98, 0.30),
                        child: SplashContentScreen(
                          color: RoyalOrange,
                          img1: Image.asset('assets/images/Frame.png'),
                        )),
                    Container(
                      width: 300,
                      height: 500,
                      decoration: const BoxDecoration(),
                      child: Stack(children: [
                        SplashContentScreen(
                          color: RoyalOrange,
                          img1: Image.asset('assets/images/Vector.png'),
                        ),
                        const Align(
                          alignment: Alignment(-0.60, .40),
                          child: Text('Education\nApp',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  fontSize: 30,
                                  fontWeight: FontWeight.w500,
                                  color: blackcolor)),
                        ),
                        Align(
                          alignment: const Alignment(-0.80, .80),
                          child: SplashContentScreen(
                            color: PhilippineGray,
                            img1: Image.asset('assets/images/circle.png'),
                          ),
                        ),
                        Align(
                          alignment: const Alignment(1, -0.40),
                          child: SplashContentScreen(
                            color: bluecolor,
                            img1: Image.asset('assets/images/cap.png'),
                          ),
                        ),
                        Align(
                          alignment: const Alignment(1, 1.3),
                          child: SplashContentScreen(
                            color: bluecolor,
                            img1: Image.asset('assets/images/contact-card.png'),
                          ),
                        ),
                      ]),
                    ),
                  ],
                ),
                Align(
                  alignment: const Alignment(-.90, 0),
                  child: SplashContentScreen(
                    color: RoyalOrange,
                    img1: Image.asset('assets/images/healthicons.png'),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
