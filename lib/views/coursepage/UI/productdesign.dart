import 'package:e_learning_app/Theme/colors.dart';
import 'package:e_learning_app/Theme/fontstyle.dart';
import 'package:e_learning_app/views/coursepage/UI/productDesignDetails.dart';
import 'package:e_learning_app/views/coursepage/widget/productdesign/bottom_container.dart';
import 'package:e_learning_app/views/coursepage/widget/productdesign/course_container.dart';
import 'package:e_learning_app/views/coursepage/widget/productdesign/traingle_shap.dart';
import 'package:flutter/material.dart';

//the screen of product Design
class ProductDesginScreen extends StatefulWidget {
  const ProductDesginScreen({super.key});

  @override
  State<ProductDesginScreen> createState() => _ProductDesginScreenState();
}

class _ProductDesginScreenState extends State<ProductDesginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: lavender,
    
      body: SafeArea(
        child: Container(
          width: double.infinity,
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(
                  height: 40,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      InkWell(
                          onTap: () {
                            setState(() {
                              Navigator.pushReplacement(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          ProductDesigndetails()));
                            });
                          },
                          child: Icon(Icons.arrow_back_ios)),
                    ],
                  ),
                ),
                Row(
                  children: [
                    
                    Container(
                      padding: EdgeInsets.only(left: 10),
                      width: 179,
                      height: 160,
                      color: lavender,
                      child: Column(
                        children: [
                          trainglepoint(),
                          SizedBox(
                            height: 20,
                          ),
                          Text(
                            'Product \nDesign v1.0',
                            style: fontsize15,
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          Stack(children: [
                            Align(
                              alignment: const Alignment(.60, .90),
                              child: Image.asset(
                                'assets/images/arrows.png',
                                color: Lightgrey,
                              ),
                            ),
                            Align(
                              alignment: Alignment.centerRight,
                              child: Image.asset('assets/images/arrow.png',
                                  color: Lightgrey),
                            ),
                          ]),
                        ],
                      ),
                    ),
                    const SizedBox(
                      width: 40,
                    ),
                    Container(
                      child: Stack(
                        children: [
                          Image.asset(
                              width: 175,
                              height: 224,
                              'assets/images/Frames.png'),
                          Positioned(
                              right: 30,
                              top: 100,
                              child: Image.asset('assets/images/curve.png')),
                        ],
                      ),
                    ),
                  ],
                ),
                Column(
                  children: [
                    coursecontainer(lavender),
                  
                    bottomcontainer(
                        bluecolor,
                        lavender,
                        text1: 'Buy Now',
                        fontsize14,
                        color: lavender),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
