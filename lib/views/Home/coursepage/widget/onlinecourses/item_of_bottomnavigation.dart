
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
    const OnlineCourseDetails(),
    const Books(),
    const SearchScreen(),
    const MenuScreen(),
  ];
  final PageStorageBucket bucket = PageStorageBucket();

  

  @override
  void initState() {
    super.initState();
  }

  Widget currentScreen = const OnlineCourseDetails();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.lavender,
      floatingActionButton: FloatingActionButton(
        shape: const CircleBorder(),
        backgroundColor: Colors.blue,
        onPressed: () {},
        child: const Icon(
          Icons.add,
          color: Colors.white,
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        color: Colors.blue,
        notchMargin: 10,
        shape: const CircularNotchedRectangle(),
        child: SizedBox(
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
                            currentScreen = const OnlineCourseDetails();
                          });
                        },
                        child: const Column(
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
                            currentScreen = const Books();
                          });
                        },
                        child: const Column(
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
                              currentScreen = const SearchScreen();
                            });
                          },
                          child: const Column(
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
                            currentScreen = const MenuScreen();
                          });
                        },
                        child: const Column(
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
    
    
    
    
    
    

