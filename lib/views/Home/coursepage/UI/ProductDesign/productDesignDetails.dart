import 'package:e_learning_app/Theme/colors.dart';
import 'package:e_learning_app/Theme/fontstyle.dart';
import 'package:e_learning_app/views/Home/coursepage/UI/ProductDesign/productdesign.dart';
import 'package:e_learning_app/views/Home/coursepage/widget/productdesign/bottom_container.dart';
import 'package:e_learning_app/views/Home/coursepage/widget/productdesign/course_container.dart';
import 'package:flutter/material.dart';

//the screen of the video of productDesign
class ProductDesigndetails extends StatefulWidget {
  const ProductDesigndetails({super.key});

  @override
  State<ProductDesigndetails> createState() => _ProductDesigndetailsState();
}

class _ProductDesigndetailsState extends State<ProductDesigndetails> {
  @override
 

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: const Color(0xffA1AAAE),
        ),
        body: SafeArea(
            child: Container(
          color: const Color(0xffA1AAAE),
          child: SingleChildScrollView(
            child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: InkWell(
                        onTap: () {
                          Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const ProductDesginScreen()));
                        },
                        child: const Icon(Icons.arrow_back_ios)),
                  ),
                 
                  coursecontainer(AppColor.lavender),
                  bottomcontainer(
                      Colors.white,
                      AppColor.bluecolor,
                      text1: 'Buy Now',
                      AppFont.fonsize23w500,
                      color: AppColor.lavender),
                ]),
          ),
        )));
  }
}
