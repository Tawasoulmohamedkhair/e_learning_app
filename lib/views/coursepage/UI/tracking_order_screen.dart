import 'package:e_learning_app/Theme/colors.dart';
import 'package:e_learning_app/Theme/fontstyle.dart';
import 'package:e_learning_app/Theme/style.dart';
import 'package:e_learning_app/views/component/button.dart';
import 'package:e_learning_app/views/coursepage/UI/course_detials.dart';
import 'package:e_learning_app/views/coursepage/widget/state_of_order.dart';
import 'package:flutter/material.dart';

class TrackongOrderScreen extends StatefulWidget {
  const TrackongOrderScreen({super.key});

  @override
  State<TrackongOrderScreen> createState() => _TrackongOrderScreenState();
}

class _TrackongOrderScreenState extends State<TrackongOrderScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: lavender,
        body: SingleChildScrollView(
          //  padding: EdgeInsets.only(left: 10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const SizedBox(
                child: sizeboxs,
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Image.asset(
                        width: 24, height: 15, 'assets/images/Path.png'),
                  ),
                  const SizedBox(
                    width: 40,
                  ),
                  Text(
                    'Tracking Order',
                    style: fontsize28,
                  ),
                ],
              ),
              const SizedBox(
                child: sizeboxs,
              ),
              Container(
                width: 325,
                height: 125,
                padding: const EdgeInsets.only(left: 15, top: 15),
                decoration: decortiondelivery,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Estimated Delivery time',
                      style: fontsize19,
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Text(
                      '4-6 Days ',
                      style: fontsize23,
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Container(
                      padding: const EdgeInsets.only(left: 5),
                      width: 155,
                      height: 29,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10)),
                      child: Row(
                        children: [
                          Image.asset('assets/images/clock.png'),
                          const SizedBox(
                            width: 10,
                          ),
                          Text(
                            'Sat 13- Tue 16 Mar',
                            style: fontsize14w500,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(child: sizeboxs),
              Row(
                children: [
                  Container(
                    width: 75,
                    height: 249,
                  ),
                  Container(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Where is my order',
                          textAlign: TextAlign.center,
                          style: fonsize23w500,
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        stateoforder(Image.asset('assets/images/Group.png'),
                            'On the way', bluecolor),
                        SizedBox(
                          width: 30,
                          height: 60,
                          child: VerticalDivider(
                            color: blackcolor.withOpacity(0.5),
                            thickness: 1,
                          ),
                        ),
                        stateoforder(Image.asset('assets/images/Group.png'),
                            'Dispatched', pink),
                        SizedBox(
                          width: 30,
                          height: 60,
                          child: VerticalDivider(
                            color: blackcolor.withOpacity(.5),
                            thickness: 1,
                          ),
                        ),
                        stateoforder(
                          Image.asset('assets/images/archive-check .png'),
                          'Order placed successfully',
                          const Color(0xff7FD77D),
                        )
                      ],
                    ),
                  ),
                ],
              ),
              Container(
                width: double.infinity,
                height: 280,
              ),
              
              ButtonScreen('Back to home', onTap: () {
                Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const CourseDetialsScreen()));
              }),
              Container(
                width: 700,
                height: 40,
                color: Colors.white,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
