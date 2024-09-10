import 'dart:async';

import 'package:e_learning_app/Theme/colors.dart';
import 'package:e_learning_app/screens/home_screen.dart';
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
        () => Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) => SplashOnlineLearning())));
  } 
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: lightbluecolor,
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            color: lightbluecolor,
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
                      child: Container(
                        decoration: BoxDecoration(
                            color: orangecolor,
                            borderRadius: BorderRadius.circular(18)),
                        width: 52,
                        height: 52,
                        child: Image.asset('assets/images/Frame.png'),
                      ),
                    ),
                   
                    Container(
                      width: 300,
                      height: 500,
                      decoration: const BoxDecoration(),
                      child: Stack(children: [
                        Container(
                          width: 52,
                          height: 52,
                          decoration: BoxDecoration(
                              color: orangecolor,
                              borderRadius: BorderRadius.circular(18)),
                          child: Container(
                            child: Image.asset('assets/images/Vector.png'),
                          ),
                        ),
                        const Align(
                          alignment: Alignment(-0.60, .40),
                          child: Text(
                            'Education\nApp',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 30,
                              fontWeight: FontWeight.w500,
                              color:blackcolor
                            )
                          ),
                        ),
                       
                        Align(
                          alignment: const Alignment(-0.80, .80),
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(18),
                              color: greycolor,
                            ),
                            width: 52,
                            height: 52,
                            child: Container(
                              child: Image.asset('assets/images/circle.png'),
                            ),
                          ),
                        ),
                        Align(
                          alignment: const Alignment(1, -0.40),
                          child: Container(
                            width: 52,
                            height: 52,
                            decoration: BoxDecoration(
                                color: bluecolor,
                                borderRadius: BorderRadius.circular(18)),
                            child: Container(
                              child: Image.asset('assets/images/cap.png'),
                            ),
                          ),
                        ),
                        Align(
                          alignment: const Alignment(1, 1.3),
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(18),
                              color: bluecolor,
                            ),
                            width: 52,
                            height: 52,
                            child: Container(
                              child:
                                  Image.asset('assets/images/contact-card.png'),
                            ),
                          ),
                        ),
                      ]),
                    ),
                  ],
                ),
                
                Align(
                  alignment: const Alignment(-.90, 0),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(18),
                      color:orangecolor,
                    ),
                    width: 50,
                    height: 52,
                    child: Container(
                      child: Image.asset('assets/images/healthicons.png'),
                    ),
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
