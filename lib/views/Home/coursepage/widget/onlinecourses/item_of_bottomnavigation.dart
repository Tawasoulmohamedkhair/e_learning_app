import 'dart:developer';

import 'package:e_learning_app/Theme/colors.dart';
import 'package:e_learning_app/views/Home/coursepage/UI/books.dart';
import 'package:e_learning_app/views/Home/coursepage/UI/menu.dart';
import 'package:e_learning_app/views/Home/coursepage/UI/CourseScreen/onlinecoursdetails.dart';
import 'package:e_learning_app/views/Home/coursepage/UI/search.dart';
import 'package:flutter/material.dart';

class CoursesBottomNavigationbar extends StatefulWidget {
  const CoursesBottomNavigationbar({super.key});

  @override
  State<CoursesBottomNavigationbar> createState() =>
      _CoursesBottomNavigationbarState();
}

class _CoursesBottomNavigationbarState
    extends State<CoursesBottomNavigationbar> {
  int myindex = 0;

  List<Widget> screens = [
    OnlineCourseDetails(),
    Books(),
    SearchScreen(),
    MenuScreen(),
  ];
  final PageStorageBucket bucket = PageStorageBucket();

  Future<void> anything() async {
    log('hello' + MediaQuery.of(context).size.width.toString());
  }

  @override
  void initState() {
    super.initState();
    anything();
  }

  Widget currentScreen = OnlineCourseDetails();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.lavender,
      floatingActionButton: FloatingActionButton(
        shape: CircleBorder(),
        backgroundColor: Colors.blue,
        onPressed: () {},
        child: Icon(
          Icons.add,
          color: Colors.white,
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        color: Colors.blue,
        notchMargin: 10,
        shape: CircularNotchedRectangle(),
        child: Container(
            height: 60,
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      MaterialButton(
                        minWidth: 40,
                        onPressed: () {
                          setState(() {
                            currentScreen = OnlineCourseDetails();
                          });
                        },
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.home,
                              color: Colors.white,
                            ),
                            Text(
                              'Home',
                              style: TextStyle(color: Colors.white),
                            ),
                          ],
                        ),
                      ),
                      MaterialButton(
                        minWidth: 40,
                        onPressed: () {
                          setState(() {
                            currentScreen = Books();
                          });
                        },
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.menu_book_outlined,
                              color: Colors.white,
                            ),
                            Text(
                              'Books',
                              style: TextStyle(color: Colors.white),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      MaterialButton(
                          minWidth: 40,
                          onPressed: () {
                            setState(() {
                              currentScreen = SearchScreen();
                            });
                          },
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.search,
                                color: Colors.white,
                              ),
                              Text(
                                'Search',
                                style: TextStyle(color: Colors.white),
                              ),
                            ],
                          )),
                      MaterialButton(
                        minWidth: 40,
                        onPressed: () {
                          setState(() {
                            currentScreen = MenuScreen();
                          });
                        },
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.menu,
                              color: Colors.white,
                            ),
                            Text(
                              'Menu',
                              style: TextStyle(color: Colors.white),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ])),
      ),
      body: PageStorage(bucket: bucket, child: currentScreen),
    );
  }
}
    
    
    
    
    
    
    /*BottomAppBar(
      elevation: 0.3,
      notchMargin: 10,
      clipBehavior: Clip.antiAlias,
      color: bluecolor,
      shape: CircularNotchedRectangle(),
      child: Container(
        height: 60,
        child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    MaterialButton(
                      minWidth: 40,
                      onPressed: () {
                        setState(() {
                          currentScreen = Home();
                          currentTab = 0;
                        });
                      },
                      child: Column(
                        children: [
                          Icon(Icons.home_outlined,
                              color: currentTab == 0
                                  ? Colors.white
                                  : Colors.white60),
                          Text(
                            'Home',
                            style: fontsize10,
                          ),
                        ],
                      ),
                    ),
                    MaterialButton(
                      minWidth: 40,
                      onPressed: () {
                        setState(() {
                          print('kl');

                          currentScreen = Books();
                          currentTab = 1;
                        });
                      },
                      child: Column(
                        children: [
                          Icon(Icons.menu_book_outlined,
                              color: currentTab == 1
                                  ? Colors.white
                                  : Colors.white60),
                          Text(
                            'Books',
                            style: fontsize10,
                          ),
                        ],
                      ),
                    ),
                  ]),
              Row(
                children: [
                  MaterialButton(
                    minWidth: 40,
                    onPressed: () {
                      setState(() {
                        print('jl');

                        currentScreen = SearchScreen();
                        currentTab = 2;
                      });
                    },
                    child: Column(
                      children: [
                        Icon(Icons.search,
                            color: currentTab == 2
                                ? Colors.white
                                : Colors.white60),
                        Text(
                          'Search',
                          style: fontsize10,
                        ),
                      ],
                    ),
                  ),
                  MaterialButton(
                    onPressed: () {
                      setState(() {
                        print('l');

                        currentScreen = MenuScreen();
                        currentTab = 3;
                      });
                    },
                    child: Column(
                      children: [
                        Icon(Icons.person_outline,
                            color: currentTab == 3
                                ? Colors.white
                                : Colors.white60),
                        Text(
                          'Profile',
                          style: fontsize10,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ]),
      ),
    );
  }
}*/

/*Widget itemofbottomnavigationbar(
    VoidCallback onPressed, String text, IconData icon) {
  return MaterialButton(
    minWidth: 40,
    onPressed: onPressed,
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(color: Colors.white, icon),
        Text(
          text,
          style: fontsize10,
        */
      
